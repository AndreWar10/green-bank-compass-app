import 'package:desafio/presentation/bloc/auth/auth_bloc.dart';
import 'package:desafio/presentation/widgets/component/register_page/form_register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../base_color_pages/base_colors.dart';
import '../base_loading_pages/loading_progress.dart';

class RegisterBlocWidget extends StatelessWidget {
  const RegisterBlocWidget({
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
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is Authenticated) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/dashboard',
          (route) => false,
        );
      }

      if (state is AuthError) {
        //Display the error message if the user is not authenticated
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.error)));
      }
    }, builder: (context, state) {
      if (state is Loading) {
        //Display the custom loading indicator while user is signing up
        return const Center(
          child: CustomLoading(),
        );
      }
      if (state is UnAuthenticated) {
        //Displaying the sign up form if the user is not authenticated
        return Container(
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
          child: FormRegisterWidget(formKey: _formKey, emailController: _emailController, passwordController: _passwordController, confirmPasswordController: _confirmPasswordController),
        );
      }
      return Container();
    });
  }
}