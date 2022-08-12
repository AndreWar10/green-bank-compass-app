import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EmprestimoText extends StatelessWidget {
  final Color colorText;
  final FontWeight fontWeightText;
  final double fontSizeText;
  final String text;
  final MainAxisAlignment mainAxixRow;

  const EmprestimoText({
    Key? key,
    required this.colorText,
    required this.fontWeightText,
    required this.fontSizeText,
    required this.text,
    required this.mainAxixRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: mainAxixRow,
        children: [
          Icon(MdiIcons.cash),
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
