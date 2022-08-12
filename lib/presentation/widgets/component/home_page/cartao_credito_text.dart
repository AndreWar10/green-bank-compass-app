import 'package:flutter/material.dart';

class CartaoCreditoText extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignmentRow;
  final String text;
  final double fontSizeText;
  final FontWeight fontWeightText;

  const CartaoCreditoText(
      {Key? key,
      required this.mainAxisAlignmentRow,
      required this.text,
      required this.fontSizeText,
      required this.fontWeightText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignmentRow,
      children: [
        Icon(Icons.credit_card),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSizeText,
            fontWeight: fontWeightText,
          ),
        ),
        Icon(Icons.keyboard_arrow_right),
      ],
    );
  }
}
