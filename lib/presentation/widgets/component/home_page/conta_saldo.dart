import 'package:flutter/material.dart';

class ContaSaldo extends StatelessWidget {
  final EdgeInsets marginContainer;
  final MainAxisAlignment mainAxixRow;
  final String text;
  final double fontSizeText;
  final FontWeight fontWeightText;

  const ContaSaldo(
      {Key? key,
      required this.marginContainer,
      required this.mainAxixRow,
      required this.text,
      required this.fontSizeText,
      required this.fontWeightText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginContainer,
      child: Row(
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
      ),
    );
  }
}
