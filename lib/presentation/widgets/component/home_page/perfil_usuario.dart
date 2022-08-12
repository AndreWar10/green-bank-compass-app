import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Perfil extends StatelessWidget {
  final Function() onTap;
  final Color colorContainer;
  final BorderRadius borderContainer;
  final EdgeInsets padding;
  final EdgeInsets margin;

  const Perfil({
    Key? key,
    required this.onTap,
    required this.colorContainer,
    required this.borderContainer,
    required this.padding,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: BaseColors().getGreenColor(),
      child: InkWell(
        // ignore: sort_child_properties_last
        child: Container(
          margin: margin,
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: borderContainer,
            color: colorContainer,
          ),
          child: Icon(
            MdiIcons.accountOutline,
            color: BaseColors().getWhiteColor(),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
