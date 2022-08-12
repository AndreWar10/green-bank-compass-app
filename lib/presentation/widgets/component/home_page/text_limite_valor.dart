import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color colorText;
  final double fontSizeText;

  const CustomText({
    Key? key,
    required this.text,
    required this.colorText,
    required this.fontSizeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colorText,
        fontSize: fontSizeText,
      ),
    );
  }
}
