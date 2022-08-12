import 'package:flutter/material.dart';

class HelpDivider extends StatelessWidget {
  const HelpDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Divider(),
    );
  }
}