import 'package:desafio/presentation/bloc/auth/auth_bloc.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: BaseColors().getGreenColor(),
      ),
      child: TextButton(
        child: Center(
          child: Text(
            'Login'.toUpperCase(),
            style: TextStyle(
                color: BaseColors().getWhiteColor(),
                fontWeight: FontWeight.bold),
          ),
        ),
        onPressed: () {
          _authenticateWithEmailAndPassword(
              context, _formKey, _emailController, _passwordController);
        },
      ),
    );
  }
}

void _authenticateWithEmailAndPassword(
    context, formKey, emailController, passwordController) {
  if (formKey.currentState!.validate()) {
    BlocProvider.of<AuthBloc>(context).add(
      SignInRequested(emailController.text, passwordController.text),
    );
  }
}
