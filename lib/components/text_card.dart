import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  final String text;

  const TextCard({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        this.text,
        style: TextStyle(
          fontSize: 24.0,
          fontFamily: 'Avenir',
          height: 1.4,
          fontWeight: FontWeight.w500,
          color: Color(0xFF3F6072),
        ),
      ),
    );
  }
}
