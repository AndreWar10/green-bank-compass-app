import 'package:desafio/presentation/pages/signIn/sign_in_page.dart';
import 'package:desafio/presentation/widgets/component/onboarding_page/class_onboard.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/onboarding_page/custom_buttom_continue.dart';
import 'package:desafio/presentation/widgets/component/onboarding_page/custom_link_pular_instrucao.dart';
import 'package:desafio/presentation/widgets/component/onboarding_page/custom_paginator.dart';
import 'package:desafio/presentation/widgets/component/onboarding_page/custom_slider.dart';

import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final onboard = Onboarding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                BaseColors().getGreenColor(),
                BaseColors().getWhiteColor(),
              ],
            ),
          ),
          child: SafeArea(
            child: Stack(
              children: [
                PageView(
                  controller: onboard.pageController,
                  onPageChanged: (int page) {
                    setState(
                      () {
                       onboard.changePage(page);
                      },
                    );
                  },
                  physics: ClampingScrollPhysics(),
                  children: [
                    //SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                    CustomSlider(
                      image: 'assets/img/onboarding/cell.png',
                      title: 'Na palma da mão',
                      text:
                          'Tudo o que você precisa na palma da mão, de qualquer lugar, simples assim.',
                      widthImage: MediaQuery.of(context).size.width * 0.8,
                      heightImage: MediaQuery.of(context).size.height * 0.3,
                      fontSizeTitle: 24,
                      fontWeightTitle: FontWeight.w500,
                      colorTitle: BaseColors().getBlackColor(),
                      textAlignTitle: TextAlign.center,
                      fontSizeText: 18,
                      colorText: BaseColors().getBlackColor(),
                      textAlignText: TextAlign.center,
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    ),
                    CustomSlider(
                      image: 'assets/img/onboarding/moca.png',
                      title: 'Controle',
                      text:
                          'Seu saldo, transferências e pagamentos, tudo em um só lugar.',
                      widthImage: MediaQuery.of(context).size.width * 0.8,
                      heightImage: MediaQuery.of(context).size.height * 0.3,
                      fontSizeTitle: 24,
                      fontWeightTitle: FontWeight.w500,
                      colorTitle: BaseColors().getBlackColor(),
                      textAlignTitle: TextAlign.center,
                      fontSizeText: 18,
                      colorText: BaseColors().getBlackColor(),
                      textAlignText: TextAlign.center,
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    ),
                    CustomSlider(
                      image: 'assets/img/onboarding/cellmoca.png',
                      title: 'Compartilhe',
                      text:
                          'Aqui é fácil e rápido, compartilhe seus comprovantes com apenas um clique.',
                      widthImage: MediaQuery.of(context).size.width * 0.8,
                      heightImage: MediaQuery.of(context).size.height * 0.3,
                      fontSizeTitle: 24,
                      fontWeightTitle: FontWeight.w500,
                      colorTitle: BaseColors().getBlackColor(),
                      textAlignTitle: TextAlign.center,
                      fontSizeText: 18,
                      colorText: BaseColors().getBlackColor(),
                      textAlignText: TextAlign.center,
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    ),
                  ],
                ),
                CustomPaginator(
                  page: onboard.currentPage,
                  shape: BoxShape.circle,
                  coloridx: BaseColors().getGreenColor(),
                  colornotidx: BaseColors().getGreyColor(),
                  height: MediaQuery.of(context).size.height * 0.015,
                  width: MediaQuery.of(context).size.width * 0.04,
                  margin: const EdgeInsets.all(4),
                  listgenerate: 3,
                  mainAxisAlignmentColumn: MainAxisAlignment.end,
                  padding: const EdgeInsets.only(bottom: 165),
                  mainAxisAlignmentRow: MainAxisAlignment.center,
                ),
                CustomBottomContinue(
                  text: onboard.currentPage == 2 ? 'QUERO ENTRAR' : 'CONTINUAR',
                  goToInicialPage: onboard.currentPage == 2
                      ? goToInicialPage
                      : onboard.proximoCard,
                  fontSize: 18,
                  color: BaseColors().getWhiteColor(),
                  paddingText:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(16)),
                  border: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  background: MaterialStateProperty.all<Color>(
                    BaseColors().getGreenColor(),
                  ),
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.08,
                  paddingButtom: const EdgeInsets.only(bottom: 85),
                  mainAxisAlignmentColumn: MainAxisAlignment.end,
                ),
                CustomLinkPularInstrucoes(
                  text: 'Pular instruções',
                  goToInicialPage: goToInicialPage,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: BaseColors().getBlackColor(),
                  padding: const EdgeInsets.only(bottom: 40),
                  mainAxisAlignmentColumn: MainAxisAlignment.end,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  goToInicialPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => LoginPage(),
      ),
    );
  }
  
}


