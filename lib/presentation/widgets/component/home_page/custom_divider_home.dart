import 'package:flutter/material.dart';

class CustomDividerHome extends StatelessWidget {
  final double thickness;
  final EdgeInsets marginDivider;

  const CustomDividerHome({
    Key? key,
    required this.thickness,
    required this.marginDivider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginDivider,
      child: Divider(
        thickness: thickness,
      ),
    );
  }
}
