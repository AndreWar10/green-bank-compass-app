import 'package:desafio/presentation/pages/signUp/sign_up_page.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterRowWidget extends StatelessWidget {
  const RegisterRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: "Não possui conta?",
            style: TextStyle(
                color: BaseColors().getBlackColor(),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 5),
        ),
        RichText(
          text: TextSpan(
            text: 'Registre-se',
            style: TextStyle(
                color: BaseColors().getGreenColor(),
                fontSize: 14,
                fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
          ),
        ),
      ],
    );
  }
}