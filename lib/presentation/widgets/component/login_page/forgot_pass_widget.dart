import 'package:desafio/presentation/pages/forgotpassword/forgotpassword.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPassWidget extends StatelessWidget {
  const ForgotPassWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          right: 14,
        ),
        child: RichText(
          text: TextSpan(
            text: 'Esqueceu a senha?',
            style: TextStyle(
                color: BaseColors().getBlackColor(),
                fontSize: 14,
                fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ForgotPassword(),
                  ),
                );
              },
          ),
        ),
      ),
    );
  }
}
