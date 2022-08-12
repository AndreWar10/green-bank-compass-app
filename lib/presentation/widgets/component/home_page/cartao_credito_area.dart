
import 'package:desafio/presentation/pages/cartao_de_credito/cartao_de_credito.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/cartao_credito_text.dart';
import 'package:desafio/presentation/widgets/component/home_page/fatura_info.dart';
import 'package:desafio/presentation/widgets/component/home_page/fatura_text.dart';
import 'package:desafio/presentation/widgets/component/home_page/limit_text.dart';
import 'package:flutter/material.dart';

class CartaoCreditoArea extends StatelessWidget {
  final CrossAxisAlignment crossAxisColumn;
  final EdgeInsets margin;

  const CartaoCreditoArea({
    Key? key,
    required this.crossAxisColumn,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => CartaoCreditoPage(),
            ),
          );
      },
      child: Container(
        margin: margin,
        child: Column(
          crossAxisAlignment: crossAxisColumn,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CartaoCreditoText(
              mainAxisAlignmentRow: MainAxisAlignment.spaceBetween,
              text: 'Cartão de crédito',
              fontSizeText: 22,
              fontWeightText: FontWeight.bold,
            ),
            FaturaText(
              colorText: BaseColors().getGreyColor(),
              fontSizeText: 18,
              text: 'Fatura atual',
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
            FaturaInfo(
              text: 'R\$ 500,00',
              colorText: BaseColors().getBlackColor(),
              fontSizeText: 20,
              fontWeightText: FontWeight.bold,
            ),
            LimitText(
              mainAxisRow: MainAxisAlignment.center,
              margin: EdgeInsets.only(top: 10),
            ),
          ],
        ),
      ),
    );
  }
}
