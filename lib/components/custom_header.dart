import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
