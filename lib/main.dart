import 'package:covidapp/screens/details/request.dart';
import 'package:covidapp/screens/home.dart';
import 'package:covidapp/screens/login.dart';
import 'package:covidapp/screens/register.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Test Booking',
      theme: ThemeData(
        backgroundColor: Color(0xFFF1F5F7),
        primarySwatch: Colors.blue,
      ),
      routes: {
        'login': (context) => Login(),
        'register': (context) => Register(),
        'home': (context) => Home(),
        'details-request': (context) => DetailsRequest(),
      },
      home: Login(),
    );
  }
}
