import 'package:flutter/material.dart';

class SeguroVida extends StatelessWidget {
  final Color colorText;
  final double fontSizeText;
  final String text;
  final Color colorText2;
  final double fontSizeText2;
  final String text2;
  final Color colorBox;
  final EdgeInsets padding;
  final EdgeInsets margin;

  const SeguroVida({
    Key? key,
    required this.colorText,
    required this.fontSizeText,
    required this.text,
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
        // borderRadius: BorderRadius.circular(15),
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
              text: text,
              style: TextStyle(
                fontSize: fontSizeText,
                color: colorText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
