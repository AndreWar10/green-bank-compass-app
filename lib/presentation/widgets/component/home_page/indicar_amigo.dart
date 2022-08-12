
import 'package:desafio/presentation/pages/indicar_amigos/indicar_amigos.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/iconbuttom_idicaramigos.dart';
import 'package:desafio/presentation/widgets/component/home_page/indicar_info.dart';
import 'package:desafio/presentation/widgets/component/home_page/indicar_text.dart';
import 'package:flutter/material.dart';

class IndicarAmigosArea extends StatelessWidget {
  final MainAxisAlignment mainAxixColumn;
  final CrossAxisAlignment crossAxisColumn;
  final Color colorBox;
  final EdgeInsets padding;
  final EdgeInsets margin;

  const IndicarAmigosArea({
    Key? key,
    required this.mainAxixColumn,
    required this.crossAxisColumn,
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
              builder: (_) => IndicarAmigosPage(),
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
          crossAxisAlignment: crossAxisColumn,
          mainAxisAlignment: mainAxixColumn,
          children: [
            IndicarText(
              colorText: BaseColors().getBlackColor(),
              fontWeightText: FontWeight.bold,
              fontSizeText: 20,
              text: 'Indique seus amigos',
            ),
            IndicarInfo(
              colorText: BaseColors().getGreyColor(),
              fontSizeText: 16,
              text:
                  'Mostre aos seus amigos como é fácil \n ter uma vida sem burocracia.',
            ),
            IconButtomIndicarAmigos(
              onTap: () {
                 Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => IndicarAmigosPage(),
            ),
          );
              },
              colorText: BaseColors().getWhiteColor(),
              fontSizeText: 16,
              text: 'Indicar amigos',
              shape: MaterialStateProperty.all(RoundedRectangleBorder()),
              colorBackground:
                  MaterialStateProperty.all(BaseColors().getGreenColor()),
              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              margin: const EdgeInsets.only(top: 15, left: 15),
            ),
          ],
        ),
      ),
    );
  }
}
