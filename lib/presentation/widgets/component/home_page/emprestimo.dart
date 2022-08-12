import 'package:flutter/material.dart';

class Emprestimo extends StatelessWidget {
  final Color colorText1;
  final double fontSizeText1;
  final String text1;
  final Color colorText2;
  final double fontSizeText2;
  final String text2;
  final Color colorBox;
  final EdgeInsets padding;
  final EdgeInsets margin;

  const Emprestimo({
    Key? key,
    required this.colorText1,
    required this.fontSizeText1,
    required this.text1,
    required this.colorText2,
    required this.fontSizeText2,
    required this.text2,
    required this.colorBox,
    required this.padding,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: colorBox,
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text2,
              style: TextStyle(
                fontSize: fontSizeText2,
                color: colorText2,
              ),
            ),
            TextSpan(
              text: text1,
              style: TextStyle(
                fontSize: fontSizeText1,
                color: colorText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
