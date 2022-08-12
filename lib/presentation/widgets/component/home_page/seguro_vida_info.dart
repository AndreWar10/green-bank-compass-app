import 'package:flutter/material.dart';

class SeguroVidaInfo extends StatelessWidget {
  final Color colorText;
  final double fontSizeText;
  final String text;

  const SeguroVidaInfo(
      {Key? key,
      required this.colorText,
      required this.fontSizeText,
      required this.text})
      : super(key: key);

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
