import 'package:covidapp/components/custom_header.dart';
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
                    Container(
                      padding: const EdgeInsets.all(
                        15.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF3EB16E),
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(62, 177, 110, 0.399913),
                            blurRadius: 10.0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      height: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('assets/icons/person-icon.png'),
                            ),
                          ),
                          Text(
                            'Self',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(
                        20.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF3EB16E),
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(62, 177, 110, 0.399913),
                            blurRadius: 10.0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      height: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('assets/icons/person-icon.png'),
                            ),
                          ),
                          Text(
                            'Self',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(
                        20.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF3EB16E),
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(62, 177, 110, 0.399913),
                            blurRadius: 10.0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      height: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('assets/icons/person-icon.png'),
                            ),
                          ),
                          Text(
                            'Self',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(
                        20.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF3EB16E),
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(62, 177, 110, 0.399913),
                            blurRadius: 10.0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      height: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('assets/icons/person-icon.png'),
                            ),
                          ),
                          Text(
                            'Self',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
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
