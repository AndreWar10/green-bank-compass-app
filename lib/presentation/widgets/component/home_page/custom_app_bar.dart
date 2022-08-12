import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBarHome extends StatelessWidget {
  final double elevation;
  final SystemUiOverlayStyle systemOverlayStyle;

  const CustomAppBarHome({
    Key? key,
    required this.elevation,
    required this.systemOverlayStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      systemOverlayStyle: systemOverlayStyle,
    );
  }
}
