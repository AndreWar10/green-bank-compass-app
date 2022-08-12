import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/forgotpassword_page/field_forgot_password_widget.dart';
import 'package:desafio/presentation/widgets/component/forgotpassword_page/forgot_password_buttom_widget.dart';
import 'package:flutter/material.dart';

class ForgotBlocWidget extends StatelessWidget {
  const ForgotBlocWidget({
    Key? key,
    required TextEditingController emailController,
  }) : _emailController = emailController, super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Form(
             
              child: Column(
              children: <Widget>[
                SizedBox(
                  height: 32,
                ),
                FieldForgotPasswordWidget(emailController: _emailController),
                SizedBox(height: 16),
                ForgotPasswordButtomWidget(emailController: _emailController)
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}