import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: screen.height * 0.29,
              color: Color.fromRGBO(134, 207, 165, 0.34),
              padding: const EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: 25.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 14.0,
                        width: 20.0,
                        child: Image(
                          image: AssetImage('images/menu-icon.png'),
                        ),
                      ),
                      Container(
                        width: 46.0,
                        height: 46.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360.0),
                        ),
                        child: Image(
                          image: AssetImage('images/user.png'),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 15.0,
                    ),
                    width: screen.width * 0.68,
                    child: Text(
                      'What are you looking for?',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w900,
                        fontSize: 24.0,
                        height: 1,
                        letterSpacing: 1,
                        color: Color(0xFF3EB16E),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: screen.height * 0.71,
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 99.0,
                    padding: const EdgeInsets.only(
                      top: 33.0,
                      left: 10.0,
                      bottom: 33.0,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 22.0,
                    ),
                    color: Colors.white,
                    child: Text(
                      'COVID-19 Test Request',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Avenir',
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F6072),
                      ),
                    ),
                  ),
                  Container(
                    height: 99.0,
                    padding: const EdgeInsets.only(
                      top: 33.0,
                      left: 10.0,
                      bottom: 33.0,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 22.0,
                    ),
                    color: Colors.white,
                    child: Text(
                      'COVID-19 Prevention',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Avenir',
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F6072),
                      ),
                    ),
                  ),
                  Container(
                    height: 99.0,
                    padding: const EdgeInsets.only(
                      top: 33.0,
                      left: 10.0,
                      bottom: 33.0,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 22.0,
                    ),
                    color: Colors.white,
                    child: Text(
                      'Important numbers',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Avenir',
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F6072),
                      ),
                    ),
                  ),
                  Container(
                    height: 99.0,
                    padding: const EdgeInsets.only(
                      top: 33.0,
                      left: 10.0,
                      bottom: 33.0,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 22.0,
                    ),
                    color: Colors.white,
                    child: Text(
                      'Support',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Avenir',
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F6072),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
