import 'package:desafio/presentation/pages/seguro/seguro_page.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/seguro_cel_button.dart';
import 'package:desafio/presentation/widgets/component/home_page/seguro_cel_info.dart';
import 'package:desafio/presentation/widgets/component/home_page/seguro_cell_text.dart';
import 'package:flutter/material.dart';

class SeguroCelArea extends StatelessWidget {
  final MainAxisAlignment mainAxisColumn;
  final CrossAxisAlignment crossAxixColumn;
  final Color colorBox;
  final EdgeInsets padding;
  final EdgeInsets margin;

  const SeguroCelArea({
    Key? key,
    required this.mainAxisColumn,
    required this.crossAxixColumn,
    required this.colorBox,
    required this.padding,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SeguroPage(),
          ),
        );
      },
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: colorBox,
        ),
        child: Column(
          crossAxisAlignment: crossAxixColumn,
          mainAxisAlignment: mainAxisColumn,
          children: [
            SeguroCelText(
              colorText: BaseColors().getBlackColor(),
              fontWeightText: FontWeight.bold,
              fontSizeText: 20,
              text: 'Seguro para Celular',
            ),
            SeguroCelInfo(
              colorText: BaseColors().getGreyColor(),
              fontSizeText: 16,
              text:
                  'Que tal fazer um seguro contra furto \n para o seu celular?',
            ),
            SeguroCelButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SeguroPage(),
                  ),
                );
              },
              colorText: BaseColors().getWhiteColor(),
              fontSizeText: 16,
              text: 'Conhecer seguro',
              shape: MaterialStateProperty.all(RoundedRectangleBorder()),
              backgroundColor:
                  MaterialStateProperty.all(BaseColors().getGreenColor()),
              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              margin: EdgeInsets.only(top: 15, left: 12),
            ),
          ],
        ),
      ),
    );
  }
}
