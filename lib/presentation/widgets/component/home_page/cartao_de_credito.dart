import 'package:desafio/presentation/pages/cartao_de_credito/cartao_de_credito.dart';
import 'package:flutter/material.dart';

class MeusCartoes extends StatelessWidget {
  final Color colorText;
  final double fontSizeText;
  final String text;
  final EdgeInsets marginContainer2;
  final Color boxColor;
  final EdgeInsets paddingContainer1;
  final EdgeInsets marginContainer1;

  const MeusCartoes({
    Key? key,
    required this.colorText,
    required this.fontSizeText,
    required this.text,
    required this.marginContainer2,
    required this.boxColor,
    required this.paddingContainer1,
    required this.marginContainer1,
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
        margin: marginContainer1,
        padding: paddingContainer1,
        decoration: BoxDecoration(
          color: boxColor,
          // borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Icon(Icons.credit_card),
            Container(
              margin: marginContainer2,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSizeText,
                  // fontWeight: FontWeight.bold,
                  color: colorText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
