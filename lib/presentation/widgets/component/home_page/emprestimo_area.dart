import 'package:desafio/presentation/pages/emprestimo/emprestimo_page.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/emprestimo_button.dart';
import 'package:desafio/presentation/widgets/component/home_page/emprestimo_info.dart';
import 'package:desafio/presentation/widgets/component/home_page/emprestimo_text.dart';
import 'package:flutter/material.dart';

class EmprestimoArea extends StatelessWidget {
  final CrossAxisAlignment crossAxisColumn;
  final EdgeInsets margin;

  const EmprestimoArea({
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
            builder: (_) => EmprestimoPage(),
          ),
        );
      },
      child: Container(
        margin: margin,
        child: Column(
          crossAxisAlignment: crossAxisColumn,
          children: [
            EmprestimoText(
              colorText: BaseColors().getBlackColor(),
              fontWeightText: FontWeight.bold,
              fontSizeText: 22,
              text: 'Empréstimo',
              mainAxixRow: MainAxisAlignment.spaceBetween,
            ),
            EmprestimoInfo(
              MainAxisAlignmentRow: MainAxisAlignment.center,
              margin: EdgeInsets.only(top: 10),
            ),
            EmprestimoButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EmprestimoPage(),
                  ),
                );
              },
              colorText: BaseColors().getWhiteColor(),
              fontSizeText: 16,
              text: 'Simular empréstimo',
              shape: MaterialStateProperty.all(RoundedRectangleBorder()),
              backgroundColor:
                  MaterialStateProperty.all(BaseColors().getGreenColor()),
              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              margin: EdgeInsets.only(top: 15, left: 100),
            ),
          ],
        ),
      ),
    );
  }
}
