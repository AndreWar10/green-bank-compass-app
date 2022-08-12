import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final Function() navigator;
  final Icon icon;
  final double iconSize;
  final Color colorIcon;
  final double elevationApp;
  final Color backgroundColorApp;
  final double scrolledUnderElevationApp;
  
  // ignore: use_key_in_widget_constructors
  const CustomAppBar({Key? key, required this.navigator, required this.icon, required this.iconSize, required this.colorIcon, required this.elevationApp, required this.backgroundColorApp, required this.scrolledUnderElevationApp,});

   

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: scrolledUnderElevationApp,
      backgroundColor: backgroundColorApp,
      elevation: elevationApp,
      leading: IconButton(
        color: colorIcon,
        iconSize: iconSize,
        icon: icon,
        onPressed: () {
          navigator();
        },
      ),
    );
  }
}
