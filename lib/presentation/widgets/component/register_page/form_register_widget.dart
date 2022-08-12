

import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/forgotpassword_page/custom_text_field.dart';
import 'package:desafio/presentation/widgets/component/register_page/auxiliar/descriptions.dart';
import 'package:desafio/presentation/widgets/component/register_page/register_cadastro_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'have_account_widget.dart';

class FormRegisterWidget extends StatefulWidget {
  const FormRegisterWidget({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController confirmPasswordController,
  }) : _formKey = formKey, _emailController = emailController, _passwordController = passwordController, _confirmPasswordController = confirmPasswordController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final TextEditingController _confirmPasswordController;

  @override
  State<FormRegisterWidget> createState() => _FormRegisterWidgetState();
}

class _FormRegisterWidgetState extends State<FormRegisterWidget> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: SingleChildScrollView(
          reverse: true,
          child: Padding(
        padding: EdgeInsets.fromLTRB(
            10, MediaQuery.of(context).size.height * 0.15, 10, 80),
        child: Column(
          
          children: <Widget>[
            Image.asset(
              "assets/img/splashpage/logo.png",
              width: 150,
              height: 150,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Description(
              text: 'Registre-se',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            Description(
              text: "Bem-vindo, faça seu cadastro",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 15),
            CustomTextField(
              text: 'Email',
              icon: Icons.email_outlined,
              isPasswordType: false,
              controller: widget._emailController,
              cursorColor: BaseColors().getWhiteColor(),
              textStyleColor:
                  BaseColors().getWhiteColor().withOpacity(0.9),
              colorIcon: BaseColors().getWhiteColor(),
              filled: true,
              fillColor: BaseColors().getGreyColor().withOpacity(0.3),
              labelTextStyleColor:
                  BaseColors().getWhiteColor().withOpacity(0.9),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              outlineBorderRadius: BorderRadius.circular(10),
              widthBorderSide: 0,
              borderStyle: BorderStyle.none,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (val) {
                return val != null && !EmailValidator.validate(val)
                    ? 'Insira um email válido'
                    : null;
              }, suffix: null,
            ),
            SizedBox(height: 10),
            CustomTextField(
              text: 'Senha',
              icon: Icons.lock_outline,
              isPasswordType: _showPassword == false,
              controller: widget._passwordController,
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
                return val != null && val.length < 6
                    ? "A senha deve possuir pelo menos 6 caracteres"
                    : null;
              }, suffix:  GestureDetector(
                    onTap: () {
                      setState(() {
                        _showPassword =
                            !_showPassword; //inverte o valor no clique
                      });
                    },
                    child: Icon(_showPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
            ),
            SizedBox(height: 10),
            CustomTextField(
              text: 'Confirme sua senha',
              icon: Icons.lock_outline,
              isPasswordType: _showPassword == false,
              controller: widget._confirmPasswordController,
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
                if (widget._passwordController.text !=
                    widget._confirmPasswordController.text) {
                  return 'As senhas não são coincidentes';
                }
                return null;
              }, suffix: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showPassword =
                            !_showPassword; //inverte o valor no clique
                      });
                    },
                    child: Icon(_showPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
            ),
            SizedBox(height: 10),
            CadastreRegisterWidget(
              formKey: widget._formKey,
              emailController: widget._emailController,
              passwordController: widget._passwordController,
            ),
            SizedBox(height: 10),
            HaveAccountWidget(),
          ],
        ),
      )),
    );
  }
}