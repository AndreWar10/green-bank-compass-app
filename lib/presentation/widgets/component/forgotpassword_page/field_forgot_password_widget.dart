import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/forgotpassword_page/custom_text_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class FieldForgotPasswordWidget extends StatelessWidget {
  const FieldForgotPasswordWidget({
    Key? key,
    required TextEditingController emailController,
  }) : _emailController = emailController, super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        controller: _emailController,
        icon: Icons.email_outlined,
        text: 'Entre com seu email',
        isPasswordType: false,
        cursorColor: BaseColors().getWhiteColor(),
        textStyleColor:
            BaseColors().getWhiteColor().withOpacity(0.9),
        colorIcon: BaseColors().getWhiteColor(),
        filled: true,
        fillColor: BaseColors().getGreyColor().withOpacity(0.3),
        labelTextStyleColor:
            BaseColors().getWhiteColor().withOpacity(0.9),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        outlineBorderRadius: BorderRadius.circular(18),
        widthBorderSide: 0,
        borderStyle: BorderStyle.none,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (val) {
          return val != null && !EmailValidator.validate(val)
              ? 'Insira um email válido'
              : null;
        }, suffix: null,);
  }
}
