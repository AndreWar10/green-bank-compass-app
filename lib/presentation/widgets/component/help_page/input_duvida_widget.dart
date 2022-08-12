import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/material.dart';

class InputDuvidaWidget extends StatelessWidget {
  const InputDuvidaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
            color: BaseColors().getGreenLigthColor(),
            size: 30,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)),
          hintText: 'Qual é sua dúvida?'),
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
