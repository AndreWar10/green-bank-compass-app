import 'package:desafio/presentation/pages/seguro/seguro_page.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/seguro_vida_info.dart';
import 'package:desafio/presentation/widgets/component/home_page/seguro_vida_text.dart';
import 'package:flutter/material.dart';

class SeguroVidaArea extends StatelessWidget {
  final CrossAxisAlignment crossAxixColumn;
  final EdgeInsets margin;

  const SeguroVidaArea(
      {Key? key, required this.crossAxixColumn, required this.margin})
      : super(key: key);

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
        child: Column(
          crossAxisAlignment: crossAxixColumn,
          children: [
            // seguroVidaIcon(),
            SeguroVidaText(
              colorText: BaseColors().getBlackColor(),
              fontWeightText: FontWeight.bold,
              fontSizeText: 22,
              text: 'Seguro de vida',
              mainAxixRow: MainAxisAlignment.spaceBetween,
              margin: EdgeInsets.symmetric(vertical: 20),
            ),
            SeguroVidaInfo(
              colorText: BaseColors().getGreyColor(),
              fontSizeText: 16,
              text:
                  'Conheça nosso Seguro de Vida: \n simples e cabe no seu bolso.',
            ),
            // SeguroVidaButton(
            //   onTap: () {},
            //   colorText: BaseColors().getWhiteColor(),
            //   fontSizeText: 16,
            //   text: 'Contratar seguro',
            //   shape: MaterialStateProperty.all(RoundedRectangleBorder()),
            //   padding: MaterialStateProperty.all(EdgeInsets.all(10)),
            //   backgroundColor:
            //       MaterialStateProperty.all(BaseColors().getGreenColor()),
            //   margin: const EdgeInsets.only(top: 15, left: 120),
            // ),
          ],
        ),
      ),
    );
  }
}
