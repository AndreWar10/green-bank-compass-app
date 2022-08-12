import 'package:desafio/presentation/pages/investimento/investir_page.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/investimento_infod.dart';
import 'package:desafio/presentation/widgets/component/home_page/investimento_text.dart';
import 'package:flutter/material.dart';

class InvestimentoArea extends StatelessWidget {
  final CrossAxisAlignment crossAxixColumn;
  final EdgeInsets margin;

  const InvestimentoArea({
    Key? key,
    required this.crossAxixColumn,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => InvestimentoPage(),
            ),
          );
      },
      child: Container(
        margin: margin,
        child: Column(
          crossAxisAlignment: crossAxixColumn,
          children: [
            InvestimentoText(
              colorText: BaseColors().getBlackColor(),
              fontWeightText: FontWeight.bold,
              fontSizeText: 22,
              text: 'Investimento Fácil',
              mainAxixRow: MainAxisAlignment.spaceBetween,
              margin: EdgeInsets.symmetric(vertical: 20),
            ),
            InvestimentoInfo(
              colorText: BaseColors().getGreyColor(),
              fontSizeText: 16,
              text:
                  'Conheça o Investimento Fácil! \n Sem taxas e sem burocracia! ',
            ),
            // investimentoButton(),
          ],
        ),
      ),
    );
  }
}
