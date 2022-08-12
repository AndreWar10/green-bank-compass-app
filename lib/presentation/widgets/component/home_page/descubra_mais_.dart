import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/descubra_text.dart';
import 'package:desafio/presentation/widgets/component/home_page/indicar_amigo.dart';
import 'package:desafio/presentation/widgets/component/home_page/seguro_cel_area.dart';
import 'package:flutter/material.dart';

class DescubraMais extends StatelessWidget {
  final EdgeInsets margin;

  const DescubraMais({Key? key, required this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DescubraText(
          fontWeightText: FontWeight.bold,
          fontSizeText: 22,
          text: 'Descubra mais',
          mainAxixRow: MainAxisAlignment.center,
        ),
        Container(
          margin: margin,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IndicarAmigosArea(
                  mainAxixColumn: MainAxisAlignment.center,
                  crossAxisColumn: CrossAxisAlignment.center,
                  colorBox: BaseColors().getGreyLigthColor(),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                ),
                SeguroCelArea(
                  mainAxisColumn: MainAxisAlignment.center,
                  crossAxixColumn: CrossAxisAlignment.center,
                  colorBox: BaseColors().getGreyLigthColor(),
                  padding: EdgeInsets.all(20),
                  margin:
                      EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
