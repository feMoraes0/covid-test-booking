import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 33.0,
              ),
              child: Text(
                ('Login').toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 16,
                  color: Color(0xff3EB16E),
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 31.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Text(
                        'Mobile Number',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 14,
                          color: Color(0xff3EB16E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff86CFA5),
                              width: 0.3,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff86CFA5),
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 14,
                              color: Color(0xff3EB16E),
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              'Forgot?',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 14,
                                color: Color(0xff3EB16E),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff86CFA5),
                            width: 0.3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff86CFA5),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 51.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 40.0,
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        color: Color(0xff3EB16E),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'New User? Register Here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3EB16E),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
