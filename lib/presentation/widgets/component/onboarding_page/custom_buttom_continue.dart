import 'package:flutter/material.dart';

class CustomBottomContinue extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final void Function() goToInicialPage;
  final MaterialStateProperty<EdgeInsets> paddingText;
  final MaterialStateProperty<RoundedRectangleBorder> border;
  final MaterialStateProperty<Color> background;
  final double width;
  final double height;
  final EdgeInsets paddingButtom;
  final MainAxisAlignment mainAxisAlignmentColumn;

  // ignore: use_key_in_widget_constructors
  const CustomBottomContinue({
    required this.text,
    required this.goToInicialPage,
    required this.fontSize,
    required this.color,
    required this.paddingText,
    required this.border,
    required this.background,
    required this.width,
    required this.height,
    required this.paddingButtom,
    required this.mainAxisAlignmentColumn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingButtom,
      child: Center(
        child: Column(
          mainAxisAlignment: mainAxisAlignmentColumn,
          children: [
            SizedBox(
              width: width,
              height: height,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: paddingText,
                  backgroundColor: background,
                  shape: border,
                ),
                onPressed: () {
                  goToInicialPage();
                },
                child: Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: fontSize,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
