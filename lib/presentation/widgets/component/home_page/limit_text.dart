import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/text_limite_valor.dart';
import 'package:flutter/material.dart';

class LimitText extends StatelessWidget {
  final MainAxisAlignment mainAxisRow;
  final EdgeInsets margin;

  const LimitText({
    Key? key,
    required this.mainAxisRow,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: margin,
        child: Row(
          mainAxisAlignment: mainAxisRow,
          children: [
            CustomText(
              text: 'Limite disponível de  ',
              colorText: BaseColors().getGreyColor(),
              fontSizeText: 16,
            ),
            CustomText(
              text: 'R\$ 2.500,00,',
              colorText: BaseColors().getGreenColor(),
              fontSizeText: 18,
            ),
          ],
        ),
      ),
    );
  }
}
