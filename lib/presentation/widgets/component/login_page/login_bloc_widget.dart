import 'package:desafio/presentation/bloc/auth/auth_bloc.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/base_loading_pages/loading_progress.dart';
import 'package:desafio/presentation/widgets/component/login_page/forgot_pass_widget.dart';
import 'package:desafio/presentation/widgets/component/login_page/form_login_widget.dart';
import 'package:desafio/presentation/widgets/component/login_page/login_button_widget.dart';
import 'package:desafio/presentation/widgets/component/login_page/register_row_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocWidget extends StatelessWidget {
  const LoginBlocWidget({
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
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is Loading) {
          return const Center(
            child: CustomLoading(),
          );
        }
        if (state is UnAuthenticated) {
          return SingleChildScrollView(
            reverse: true,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: BaseColors().getGreenColor(),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.05),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/img/splashpage/splash.png",
                          height: MediaQuery.of(context).size.height * 0.25,
                        ),
                      ),
                      Center(
                        child: FormLoginWidget(
                          formKey: _formKey,
                          emailController: _emailController,
                          passwordController: _passwordController,
                        ),
                      ),
                    ],
                  ),
                ),
                ForgotPassWidget(),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15),
                LoginButtonWidget(
                  formKey: _formKey,
                  emailController: _emailController,
                  passwordController: _passwordController,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.016),
                RegisterRowWidget()
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}