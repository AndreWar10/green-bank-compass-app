import 'package:desafio/presentation/pages/cartao_de_credito/parcelar.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/acoes_icon.dart';
import 'package:desafio/presentation/widgets/component/home_page/cartao_credito_area.dart';
import 'package:desafio/presentation/widgets/component/home_page/cartao_de_credito.dart';
import 'package:desafio/presentation/widgets/component/home_page/conta_area.dart';
import 'package:desafio/presentation/widgets/component/home_page/custom_divider_home.dart';
import 'package:desafio/presentation/widgets/component/home_page/descubra_mais_.dart';
import 'package:desafio/presentation/widgets/component/home_page/emprestimo_area.dart';
import 'package:desafio/presentation/widgets/component/home_page/header.dart';
import 'package:desafio/presentation/widgets/component/home_page/informacoes.dart';
import 'package:desafio/presentation/widgets/component/home_page/investimento.dart';
import 'package:desafio/presentation/widgets/component/home_page/parcelarbutton.dart';
import 'package:desafio/presentation/widgets/component/home_page/seguro_vida_area.dart';
import 'package:flutter/material.dart';


class BodyHomePage extends StatelessWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BaseColors().getWhiteColor(),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                color: BaseColors().getGreenColor(),
                crossAxixColumn: CrossAxisAlignment.start,
                mainAxisRow: MainAxisAlignment.spaceBetween,
              ),
              ContaArea(),
              AcoesIcon(),
              MeusCartoes(
                colorText: BaseColors().getBlackColor(),
                fontSizeText: 18,
                text: 'Meus cartões',
                marginContainer2: const EdgeInsets.symmetric(horizontal: 20),
                boxColor: BaseColors().getGreyLigthColor(),
                paddingContainer1: EdgeInsets.all(15),
                marginContainer1: EdgeInsets.all(20),
              ),
              Informacoes(
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
              CustomDividerHome(
                thickness: 1,
                marginDivider: EdgeInsets.symmetric(vertical: 10),
              ),
              CartaoCreditoArea(
                crossAxisColumn: CrossAxisAlignment.start,
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              ParcelarButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ParcelarPage(),
                    ),
                  );
                },
                colorText: BaseColors().getWhiteColor(),
                fontSizeText: 16,
                text: 'Parcelar compras',
                shape: MaterialStateProperty.all(RoundedRectangleBorder()),
                backgroundColor:
                    MaterialStateProperty.all(BaseColors().getGreenColor()),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                margin: EdgeInsets.only(top: 15, left: 130),
              ),
              CustomDividerHome(
                thickness: 1,
                marginDivider: EdgeInsets.symmetric(vertical: 10),
              ),
              EmprestimoArea(
                crossAxisColumn: CrossAxisAlignment.start,
                margin: EdgeInsets.symmetric(horizontal: 20),
              ),
              CustomDividerHome(
                thickness: 1,
                marginDivider: EdgeInsets.symmetric(vertical: 10),
              ),
              InvestimentoArea(
                crossAxixColumn: CrossAxisAlignment.start,
                margin: EdgeInsets.symmetric(horizontal: 20),
              ),
              CustomDividerHome(
                thickness: 1,
                marginDivider: EdgeInsets.symmetric(vertical: 10),
              ),
              SeguroVidaArea(
                crossAxixColumn: CrossAxisAlignment.start,
                margin: EdgeInsets.symmetric(horizontal: 20),
              ),
              CustomDividerHome(
                thickness: 1,
                marginDivider: EdgeInsets.symmetric(vertical: 10),
              ),
              DescubraMais(
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
