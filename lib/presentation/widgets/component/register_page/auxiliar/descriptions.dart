import 'package:flutter/cupertino.dart';

class Description extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const Description({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
