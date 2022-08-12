import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SeguroVidaText extends StatelessWidget {
  final Color colorText;
  final FontWeight fontWeightText;
  final double fontSizeText;
  final String text;
  final MainAxisAlignment mainAxixRow;
  final EdgeInsets margin;

  const SeguroVidaText({
    Key? key,
    required this.colorText,
    required this.fontWeightText,
    required this.fontSizeText,
    required this.text,
    required this.mainAxixRow,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: mainAxixRow,
        children: [
          Icon(MdiIcons.heartOutline),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSizeText,
              fontWeight: fontWeightText,
              color: colorText,
            ),
          ),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
