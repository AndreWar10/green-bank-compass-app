import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key, required this.textAppBar,
  }) : super(key: key);
  final String textAppBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: BaseColors().getGreenColor(),
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: Text(
        textAppBar,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
