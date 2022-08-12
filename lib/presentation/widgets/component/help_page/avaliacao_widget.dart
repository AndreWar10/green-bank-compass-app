import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AvaliacaoWidget extends StatelessWidget {
  AvaliacaoWidget({
    Key? key, required this.icon, this.color, required this.reacao
  }) : super(key: key);

  final IconData icon;
  final String reacao;
  Color? color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: color,
            border: Border.all(
              color: BaseColors().getGreenLigthColor(),
            ),
          ),
          child: Icon(
            icon,
            color: BaseColors().getGreenColor(),
            size: 30,
          ),
        ),
        SizedBox(height: 10,),
        Text( reacao, style: TextStyle(color: BaseColors().getGreenColor(), fontWeight: FontWeight.w600), ),
      ],
    );
  }
}