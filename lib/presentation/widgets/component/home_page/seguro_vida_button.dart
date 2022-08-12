import 'package:flutter/material.dart';

class SeguroVidaButton extends StatelessWidget {
  final Function() onTap;
  final Color colorText;
  final double fontSizeText;
  final String text;
  final MaterialStateProperty<RoundedRectangleBorder> shape;
  final MaterialStateProperty<EdgeInsets> padding;
  final MaterialStateProperty<Color> backgroundColor;
  final EdgeInsets margin;

  const SeguroVidaButton({
    Key? key,
    required this.onTap,
    required this.colorText,
    required this.fontSizeText,
    required this.text,
    required this.shape,
    required this.padding,
    required this.backgroundColor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: padding,
          backgroundColor: backgroundColor,
          shape: shape,
        ),
        // ignore: sort_child_properties_last
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSizeText,
            color: colorText,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
