import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/text_emprestimo_info.dart';
import 'package:flutter/material.dart';

class EmprestimoInfo extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final MainAxisAlignment MainAxisAlignmentRow;
  final EdgeInsets margin;

  const EmprestimoInfo({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.MainAxisAlignmentRow,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: margin,
        child: Row(
          mainAxisAlignment: MainAxisAlignmentRow,
          children: [
            TextEmprestimoInfo(
              colorText: BaseColors().getGreyColor(),
              fontSizeText: 16,
              text: 'Valor disponível até  ',
            ),
            TextEmprestimoInfo(
              colorText: BaseColors().getGreenColor(),
              fontSizeText: 18,
              text: 'R\$ 150.000,00',
            ),
          ],
        ),
      ),
    );
  }
}
