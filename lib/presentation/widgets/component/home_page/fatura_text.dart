import 'package:flutter/material.dart';

class FaturaText extends StatelessWidget {
  final Color colorText;
  final double fontSizeText;
  final String text;
  final EdgeInsets margin;

  const FaturaText({
    Key? key,
    required this.colorText,
    required this.fontSizeText,
    required this.text,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: margin,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSizeText,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
