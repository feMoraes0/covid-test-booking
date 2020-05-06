import 'package:covidapp/components/custom_header.dart';
import 'package:covidapp/components/icon_text_card.dart';
import 'package:covidapp/components/list-item.dart';
import 'package:covidapp/components/text_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsLifeSymptoms extends StatefulWidget {
  @override
  _DetailsRequestState createState() => _DetailsRequestState();
}

class _DetailsRequestState extends State<DetailsLifeSymptoms> {
  List<int> _selected;
  final List<String> _symptoms = [
    'Not experiencing any life-threatening symptoms',
    'Extremely difficult breathing',
    'Blue-colored lips or face',
    'Severe and constant pain or pressure in the chest',
    'Severe and constant dizziness or lightheadedness',
    'Acting confused (new or worsening)',
    'Unconscious or very difficult to wake up',
    'Slurred speech (new or worsening)',
    'New seizure or seizures that won’t stop'
  ];

  @override
  void initState() {
    this._selected = [];
    super.initState();
  }

  void handleSelect(int selected) {
    if (!this._selected.contains(selected)) {
      this.setState(() {
        this._selected.add(selected);
      });
    } else {
      this.setState(() {
        this._selected.remove(selected);
      });
    }
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
            horizontal: 20.0,
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
                  'Do you have any of the following life-threatening symptoms?',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: Color(0xFF2F2F2F),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  width: screen.width,
                  child: ListView.builder(
                    itemCount: this._symptoms.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => handleSelect(index),
                        child: ListItem(
                          text: this._symptoms[index],
                          checked: this._selected.contains(index),
                        ),
                      );
                    },
                  ),
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
            Navigator.pushNamed(context, 'details-location');
          },
        ),
      ),
    );
  }
}
