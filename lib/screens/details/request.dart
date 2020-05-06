import 'package:covidapp/components/custom_header.dart';
import 'package:covidapp/components/icon_text_card.dart';
import 'package:covidapp/components/text_card.dart';
import 'package:flutter/material.dart';

class DetailsRequest extends StatelessWidget {
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
                  'Who are you requesting a test for?',
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
                    IconTextCard(
                      urlIcon: 'assets/icons/person.svg',
                      text: 'Self',
                      active: true,
                    ),
                    IconTextCard(
                      urlIcon: 'assets/icons/person.svg',
                      text: 'Family',
                      active: false,
                    ),
                    IconTextCard(
                      urlIcon: 'assets/icons/senior.svg',
                      text: 'Family (Senior)',
                      active: false,
                    ),
                    IconTextCard(
                      urlIcon: 'assets/icons/emergency.svg',
                      text: 'Emergency',
                      active: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
