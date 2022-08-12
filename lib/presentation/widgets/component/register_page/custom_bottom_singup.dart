import 'package:flutter/material.dart';

class CustomButtomSingUp extends StatelessWidget {
  final double heightContainerButtom;
  final EdgeInsets marginButtom;
  final BorderRadius borderRadius;
  final Function() onTap;
  final String textButtom;
  final Color colorTextButtom;
  final double fontSizeText;
  final FontWeight fontWeightText;
  final MaterialStateProperty<Color> backgroundColorButtom;
  final MaterialStateProperty<RoundedRectangleBorder> shape;

  const CustomButtomSingUp({
    Key? key,
    required this.heightContainerButtom,
    required this.marginButtom,
    required this.borderRadius,
    required this.onTap,
    required this.textButtom,
    required this.colorTextButtom,
    required this.fontSizeText,
    required this.fontWeightText,
    required this.backgroundColorButtom,
    required this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: heightContainerButtom,
      margin: marginButtom,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        // ignore: sort_child_properties_last
        child: Text(
          textButtom,
          style: TextStyle(
            color: colorTextButtom,
            fontSize: fontSizeText,
            fontWeight: fontWeightText,
          ),
        ),
        style: ButtonStyle(
          shape: shape,
          backgroundColor: backgroundColorButtom,
        ),
      ),
    );
  }
}


