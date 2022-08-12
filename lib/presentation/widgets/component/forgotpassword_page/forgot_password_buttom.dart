import 'package:flutter/material.dart';

class ForgotPasswordButtom extends StatelessWidget {
  final MaterialStateProperty<RoundedRectangleBorder> shape;
  final MaterialStateProperty<Color> buttomColor;
  final FontWeight fontWeightText;
  final double fontSizeText;
  final Color textColor;
  final String title;
  final Function() onTap;
  final EdgeInsets marginContainerButtom;
  final double heightContainerButtom;

  const ForgotPasswordButtom(
      {Key? key,
      required this.shape,
      required this.buttomColor,
      required this.fontWeightText,
      required this.fontSizeText,
      required this.textColor,
      required this.title,
      required this.onTap,
      required this.marginContainerButtom,
      required this.heightContainerButtom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: heightContainerButtom,
      margin: marginContainerButtom,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        // ignore: sort_child_properties_last
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: fontSizeText,
            fontWeight: fontWeightText,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: buttomColor,
          shape: shape,
        ),
      ),
    );
  }
}
