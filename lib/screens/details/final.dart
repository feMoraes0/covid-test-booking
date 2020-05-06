import 'package:covidapp/components/custom_header.dart';
import 'package:covidapp/components/icon_text_card.dart';
import 'package:covidapp/components/text_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsFinal extends StatelessWidget {
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
                ),
                child: TextCard(
                  text: 'COVID-19 Test Request',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 40.0,
                  bottom: 30.0,
                ),
                child: SvgPicture.asset('assets/images/finish-image.svg'),
              ),
              Container(
                child: Text(
                  'Stay home and take care of yourself. Call your doctor if '
                  'you get worse',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Color(0xFF2C2828),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                child: Opacity(
                  opacity: 0.8,
                  child: Text(
                    'Sorry you’re feeling ill. You have one or more symptom(s) '
                    'that may be related to COVID-19. Stay home and take care '
                    'of yourself. Read the 10 tips to manage your health at home.',
                    style: TextStyle(
                      height: 1.70,
                      fontFamily: 'Avenir',
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2C2828),
                    ),
                  ),
                ),
              ),
              Container(
                child: Opacity(
                  opacity: 0.8,
                  child: Text(
                    'We’ll get in touch with you soon regarding the next steps. '
                    'Please avoid public gatherings and learn more from the '
                    'app. Talk to you soon!',
                    style: TextStyle(
                      height: 1.70,
                      fontFamily: 'Avenir',
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2C2828),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: screen.width - 50.0,
        height: 60.0,
        margin: EdgeInsets.only(bottom: 10.0),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(),
          backgroundColor: Color(0xFF3EB16E),
          child: Text(
            'View the tips'.toUpperCase(),
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Avenir',
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
        ),
      ),
    );
  }
}
