import 'package:flutter/material.dart';

class FaturaInfo extends StatelessWidget {
  final Color colorText;
  final String text;
  final double fontSizeText;
  final FontWeight fontWeightText;

  const FaturaInfo({
    Key? key,
    required this.text,
    required this.colorText,
    required this.fontSizeText,
    required this.fontWeightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: colorText,
          fontSize: fontSizeText,
          fontWeight: fontWeightText,
        ),
      ),
    );
  }
}
