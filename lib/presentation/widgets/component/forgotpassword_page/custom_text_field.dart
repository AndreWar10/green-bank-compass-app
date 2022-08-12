import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isPasswordType;
  final TextEditingController controller;
  final Color cursorColor;
  final Color textStyleColor;
  final Color colorIcon;
  final bool filled;
  final Color fillColor;
  final Color labelTextStyleColor;
  final FloatingLabelBehavior floatingLabelBehavior;
  final BorderRadius outlineBorderRadius;
  final double widthBorderSide;
  final BorderStyle borderStyle;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final GestureDetector? suffix;

  // ignore: use_key_in_widget_constructors
  const CustomTextField({
    Key? key,
    required this.text,
    required this.icon,
    required this.isPasswordType,
    required this.controller,
    required this.cursorColor,
    required this.textStyleColor,
    required this.colorIcon,
    required this.filled,
    required this.fillColor,
    required this.labelTextStyleColor,
    required this.floatingLabelBehavior,
    required this.outlineBorderRadius,
    required this.widthBorderSide,
    required this.borderStyle,
    this.autovalidateMode,
    this.validator, required this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: cursorColor,
      style: TextStyle(
        color: textStyleColor,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: colorIcon,
        ),

        suffixIcon: suffix,



        labelText: text,
        labelStyle: TextStyle(
          color: labelTextStyleColor,
        ),
        filled: filled,
        floatingLabelBehavior: floatingLabelBehavior,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: outlineBorderRadius,
          borderSide: BorderSide(
            width: widthBorderSide,
            style: borderStyle,
          ),
        ),
      ),
      autovalidateMode: autovalidateMode,
      validator: validator,
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    );
  }
}
