import 'package:desafio/presentation/bloc/auth/auth_bloc.dart';
import 'package:desafio/presentation/widgets/component/register_page/auxiliar/custom_bottom_singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../base_color_pages/base_colors.dart';

class CadastreRegisterWidget extends StatelessWidget {
  const CadastreRegisterWidget({
    Key? key,
     required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey, _emailController = emailController, _passwordController = passwordController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  

  @override
  Widget build(BuildContext context) {
    return CustomButtomSingUp(
      heightContainerButtom: 60,
      marginButtom: EdgeInsets.fromLTRB(0, 8, 0, 8),
      borderRadius: BorderRadius.circular(90),
      onTap: () {
        _createAccountWithEmailAndPassword(context,_formKey, _emailController, _passwordController);
      },
      textButtom: 'Cadastre-se',
      colorTextButtom: BaseColors().getWhiteColor(),
      fontSizeText: 16,
      fontWeightText: FontWeight.bold,
      backgroundColorButtom: MaterialStateProperty.all(
        BaseColors().getBlackColor().withOpacity(0.3),
      ),
      shape:
          MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18))),
    );
  }
}

 //method for validation the register in firebase data
  void _createAccountWithEmailAndPassword(context, formKey, emailController, passwordController) {
    if (formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
        SignUpRequested(
          emailController.text,
          passwordController.text,
        ),
      );
    }
  }