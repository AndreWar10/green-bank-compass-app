import 'package:flutter/material.dart';

class CustomButtomSingIn extends StatelessWidget {
  final String text;
  final double fontSizeText;
  final FontWeight fontWeightText;
  final Function() onTap;

  const CustomButtomSingIn(
      {Key? key,
      required this.text,
      required this.fontSizeText,
      required this.fontWeightText,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSizeText,
          fontWeight: fontWeightText,
        ),
      ),
      onPressed: () {
        onTap();
      },
    );
  }
}
