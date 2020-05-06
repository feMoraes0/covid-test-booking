import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String text;
  final bool checked;

  const ListItem({
    Key key,
    this.text,
    this.checked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Container(
      width: screen.width,
      margin: const EdgeInsets.only(
        bottom: 15.0,
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 24.0,
            width: 24.0,
            margin: const EdgeInsets.only(
              right: 10.0,
            ),
            decoration: BoxDecoration(
              color: (this.checked) ? Color(0xFF3EB16E) : Colors.white,
              border: Border.all(
                color: Color(0xFF3EB16E),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.50),
            ),
          ),
          Text(
            this.text,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 14.0,
              color: Color(0xFF2F2F2F),
            ),
          ),
        ],
      ),
    );
  }
}
