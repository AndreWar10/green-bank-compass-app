import 'package:flutter/material.dart';

class IndicarInfo extends StatelessWidget {
  final double fontSizeText;
  final Color colorText;
  final String text;

  const IndicarInfo({
    Key? key,
    required this.colorText,
    required this.fontSizeText,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSizeText,
          color: colorText,
        ),
      ),
    );
  }
}
