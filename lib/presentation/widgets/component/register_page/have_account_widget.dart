import 'package:desafio/presentation/pages/signIn/sign_in_page.dart';
import 'package:desafio/presentation/widgets/component/register_page/custom_buttom_singin.dart';
import 'package:desafio/presentation/widgets/component/register_page/descriptions.dart';

import 'package:flutter/material.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Description(
          text: 'Já possui conta?',
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        CustomButtomSingIn(
          text: 'Realize o login',
          fontSizeText: 14,
          fontWeightText: FontWeight.bold,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const LoginPage()),
            );
          },
        ),
      ],
    );
  }
}
