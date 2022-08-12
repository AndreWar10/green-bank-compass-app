
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/home_page/custom_card_bem_vindo.dart';
import 'package:desafio/presentation/widgets/component/home_page/icons.dart';
import 'package:desafio/presentation/widgets/component/home_page/perfil_usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Color color;
  final CrossAxisAlignment crossAxixColumn;
  final MainAxisAlignment mainAxisRow;

  const Header({
    Key? key,
    required this.color,
    required this.crossAxixColumn,
    required this.mainAxisRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final user = FirebaseAuth.instance.currentUser!;

    return Container(
      color: color,
      child: Column(
        crossAxisAlignment: crossAxixColumn,
        children: [
          Row(
            mainAxisAlignment: mainAxisRow,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Perfil(
                onTap: () {
                  Navigator.pop;
                },
                colorContainer: BaseColors().getGreenLigthColor(),
                borderContainer: BorderRadius.circular(40),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
              ),
              IconsAppBar(),
            ],
          ),
          CustomCardBemVindo(
            marginCard: EdgeInsets.only(
              left: 20,
              bottom: 20,
            ),
            fontSizeText: 20,
            fontWeightText: FontWeight.bold,
            colorText: BaseColors().getWhiteColor(),
            text: 'Olá, ${user.email}',
          ),
        ],
      ),
    );
  }
}
