import 'package:flutter/material.dart';

class CustomLinkPularInstrucoes extends StatelessWidget {
  final String text;
  final void Function() goToInicialPage;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final EdgeInsets padding;
  final MainAxisAlignment mainAxisAlignmentColumn;

  // ignore: use_key_in_widget_constructors
  const CustomLinkPularInstrucoes({
    required this.text,
    required this.goToInicialPage,
    required this.fontWeight,
    required this.fontSize,
    required this.color,
    required this.padding,
    required this.mainAxisAlignmentColumn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Center(
        child: Column(
          mainAxisAlignment: mainAxisAlignmentColumn,
          children: [
            InkWell(
              onTap: goToInicialPage,
              child: RichText(
                text: TextSpan(
                  text: text,
                  style: TextStyle(
                    color: color,
                    fontWeight: fontWeight,
                    fontSize: fontSize,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


