import 'package:flutter/material.dart';

class IconButtomIndicarAmigos extends StatelessWidget {
  final Color colorText;
  final Function() onTap;
  final double fontSizeText;
  final String text;
  final MaterialStateProperty<RoundedRectangleBorder> shape;
  final MaterialStateProperty<Color> colorBackground;
  final MaterialStateProperty<EdgeInsets> padding;
  final EdgeInsets margin;

  const IconButtomIndicarAmigos({
    Key? key,
    required this.onTap,
    required this.colorText,
    required this.fontSizeText,
    required this.text,
    required this.shape,
    required this.colorBackground,
    required this.padding,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: padding,
          backgroundColor: colorBackground,
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
