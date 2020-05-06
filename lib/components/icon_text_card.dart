import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTextCard extends StatelessWidget {
  final String urlIcon;
  final String text;
  final bool active;

  const IconTextCard({
    Key key,
    this.urlIcon,
    this.text,
    this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        15.0,
      ),
      decoration: BoxDecoration(
        color: (this.active) ? Color(0xFF3EB16E) : Colors.white,
        borderRadius: BorderRadius.circular(
          6.0,
        ),
        boxShadow: [
          (this.active)
              ? BoxShadow(
                  color: Color.fromRGBO(62, 177, 110, 0.399913),
                  blurRadius: 10.0,
                  offset: Offset(0, 0),
                )
              : BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
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
            child: SvgPicture.asset(
              this.urlIcon,
              color: (this.active) ? Colors.white : Color(0xFF3EB16E),
            ),
          ),
          Text(
            this.text,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: (this.active) ? Colors.white : Color(0xFF2F2F2F),
            ),
          ),
        ],
      ),
    );
  }
}
