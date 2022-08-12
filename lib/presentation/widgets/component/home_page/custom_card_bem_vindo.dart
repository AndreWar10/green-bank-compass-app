import 'package:flutter/material.dart';

class CustomCardBemVindo extends StatelessWidget {
  final EdgeInsets marginCard;
  final double fontSizeText;
  final FontWeight fontWeightText;
  final Color colorText;
  final String text;

  const CustomCardBemVindo({
    Key? key,
    required this.marginCard,
    required this.fontSizeText,
    required this.fontWeightText,
    required this.colorText,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginCard,
      child: Wrap(
        children: [
          Text(
            text,
            softWrap: true,
            style: TextStyle(
              color: colorText,
              fontSize: fontSizeText,
              fontWeight: fontWeightText,
            ),
          ),
        ],
      ),
    );
  }
}
