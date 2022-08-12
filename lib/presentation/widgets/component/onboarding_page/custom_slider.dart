import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSlider extends StatelessWidget {
  String image;
  String title;
  String text;
  final double widthImage;
  final double heightImage;
  final double fontSizeTitle;
  final FontWeight fontWeightTitle;
  final Color colorTitle;
  final TextAlign textAlignTitle;
  final double fontSizeText;
  final Color colorText;
  final TextAlign textAlignText;
  final EdgeInsets padding;

  // ignore: use_key_in_widget_constructors
  CustomSlider({
    required this.image,
    required this.title,
    required this.text,
    required this.widthImage,
    required this.heightImage,
    required this.fontSizeTitle,
    required this.fontWeightTitle,
    required this.colorTitle,
    required this.textAlignTitle,
    required this.fontSizeText,
    required this.colorText,
    required this.textAlignText,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.16,
        ),
        Image.asset(
          image,
          width: widthImage,
          height: heightImage,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: fontWeightTitle,
                  color: colorTitle,
                ),
                textAlign: textAlignTitle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Padding(
          padding: padding,
          child: Text(
            text,
            textAlign: textAlignText,
            style: TextStyle(
              fontSize: fontSizeText,
              color: colorText,
            ),
          ),
        ),
      ],
    );
  }
}
