import 'package:flutter/material.dart';

class DescubraText extends StatelessWidget {
  final FontWeight fontWeightText;
  final double fontSizeText;
  final String text;
  final MainAxisAlignment mainAxixRow;

  const DescubraText({
    Key? key,
    required this.fontWeightText,
    required this.fontSizeText,
    required this.text,
    required this.mainAxixRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxixRow,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSizeText,
            fontWeight: fontWeightText,
          ),
        ),
      ],
    );
  }
}
