import 'package:flutter/material.dart';

class TextEmprestimoInfo extends StatelessWidget {
  final Color colorText;
  final double fontSizeText;
  final String text;

  const TextEmprestimoInfo({
    Key? key,
    required this.colorText,
    required this.fontSizeText,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSizeText,
        color: colorText,
      ),
    );
  }
}
