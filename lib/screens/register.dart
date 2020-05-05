import 'package:covidapp/components/custom_input.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constrains.maxHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: Text(
                        ('Register').toUpperCase(),
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
                    Container(
                      margin: EdgeInsets.only(top: screen.height * 0.13),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 31.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                            child: CustomInput(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: Text(
                              'Passport Number',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 14,
                                color: Color(0xff3EB16E),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: CustomInput(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: Text(
                              'New Password',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 14,
                                color: Color(0xff3EB16E),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: CustomInput(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 14,
                                color: Color(0xff3EB16E),
                              ),
                            ),
                          ),
                          CustomInput(),
                          Container(
                            height: 51.0,
                            margin: const EdgeInsets.only(
                              top: 40.0,
                              bottom: 32.0,
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              color: Color(0xff3EB16E),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 40.0),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 60.0,
                            ),
                            child: Text(
                              'By registering you automatically accept the Terms & Polices of COVID-19 app.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF3EB16E),
                                height: 1.4,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'login');
                              },
                              child: Text(
                                'Have an account? Log In.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF3EB16E),
                                  decoration: TextDecoration.underline,
                                ),
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
          },
        ),
      ),
    );
  }
}
