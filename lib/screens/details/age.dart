import 'package:covidapp/components/custom_header.dart';
import 'package:covidapp/components/text_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsAge extends StatefulWidget {
  @override
  _DetailsLocationState createState() => _DetailsLocationState();
}

class _DetailsLocationState extends State<DetailsAge> {
  int _age;
  TextEditingController _controller;

  @override
  void initState() {
    this._age = null;
    this._controller = new TextEditingController();
    super.initState();
  }

  void handleLocation() {
    String age = this._controller.text;
    if (age != '')
      this.setState(() {
        this._age = int.parse(age);
      });
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
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
                  'What\'s your age?',
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
                  bottom: 20.0,
                ),
                height: 40,
                width: screen.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: screen.width * 0.80,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: this._controller,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 14.0,
                          height: 1.2,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            left: 15.0,
                            bottom: 3.0,
                          ),
                          hintText: 'Enter age',
                          hintStyle: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 14.0,
                            height: 1.2,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(47, 47, 47, 0.5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        handleLocation();
                      },
                      child: Container(
                        margin: const EdgeInsets.all(13.0),
                        child: SvgPicture.asset(
                          'assets/icons/add.svg',
                          color: Color(0xFF3EB16E),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              (this._age != null)
                  ? Container(
                      width: screen.width,
                      height: 40.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/icons/check.svg',
                            color: Color(0xFF3EB16E),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10.0,
                            ),
                            child: Text(
                              this._age.toString(),
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
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
            Navigator.pushNamed(context, 'details-gender');
          },
        ),
      ),
    );
  }
}
