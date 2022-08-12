import 'package:desafio/presentation/pages/emprestimo/emprestimo_page.dart';
import 'package:desafio/presentation/pages/seguro/seguro_page.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/emprestimo.dart';
import 'package:desafio/presentation/widgets/component/home_page/seguro_vida.dart';
import 'package:flutter/material.dart';

class Informacoes extends StatelessWidget {
  final EdgeInsets margin;

  const Informacoes({
    Key? key,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SeguroPage(),
                  ),
                );
              },
              child: SeguroVida(
                colorText: BaseColors().getGreenColor(),
                fontSizeText: 15,
                text: 'Conheça...',
                colorText2: BaseColors().getBlackColor(),
                fontSizeText2: 15,
                text2: 'Seguro de vida a partir de \n R\$4,99/mês?  ',
                colorBox: BaseColors().getGreyLigthColor(),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 20, top: 10),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EmprestimoPage(),
                  ),
                );
              },
              child: Emprestimo(
                colorText1: BaseColors().getGreenColor(),
                fontSizeText1: 15,
                text1: 'empréstimo.',
                colorText2: BaseColors().getBlackColor(),
                fontSizeText2: 15,
                text2: 'Você tem R\$ 150.000,00 \n disponíveis para ',
                colorBox: BaseColors().getGreyLigthColor(),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 20, top: 10, right: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
