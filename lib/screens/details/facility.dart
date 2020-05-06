import 'package:covidapp/components/custom_header.dart';
import 'package:covidapp/components/icon_text_card.dart';
import 'package:covidapp/components/text_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsFacility extends StatefulWidget {
  @override
  _DetailsLocationState createState() => _DetailsLocationState();
}

class _DetailsLocationState extends State<DetailsFacility> {
  int _selected;

  @override
  void initState() {
    this._selected = 0;
    super.initState();
  }

  void handleSelect(int selected) {
    this.setState(() {
      this._selected = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomHeader(),
              Container(
                width: screen.width,
                margin: const EdgeInsets.only(
                  top: 19.0,
                  bottom: 40.0,
                ),
                child: TextCard(
                  text: 'COVID-19 Test Request',
                ),
              ),
              Container(
                child: Text(
                  'Do you live in a long-term care facility or nursing home?',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: Color(0xFF2F2F2F),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 30.0,
                ),
                height: 260,
                width: screen.width,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                  childAspectRatio: 155 / 105,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => this.handleSelect(0),
                      child: IconTextCard(
                        urlIcon: 'assets/icons/thumb-up.svg',
                        text: 'Yes',
                        active: (this._selected == 0) ? true : false,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => this.handleSelect(1),
                      child: IconTextCard(
                        urlIcon: 'assets/icons/thumb-down.svg',
                        text: 'No',
                        active: (this._selected == 1) ? true : false,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 56.0,
        height: 61.0,
        margin: EdgeInsets.only(bottom: 10.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF3EB16E),
          child: SvgPicture.asset('assets/icons/check.svg'),
          onPressed: () {
            Navigator.pushNamed(context, 'details-work');
          },
        ),
      ),
    );
  }
}
