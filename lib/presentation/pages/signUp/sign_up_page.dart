import 'package:desafio/presentation/widgets/component/base_appbar_pages/custom_app_bar.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/register_page/register_bloc_widget.dart';
import 'package:flutter/material.dart';




class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: CustomAppBar(
            navigator: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.keyboard_arrow_left),
            iconSize: 35,
            colorIcon: BaseColors().getBlackColor(),
            elevationApp: 0,
            backgroundColorApp: Colors.transparent,
            scrolledUnderElevationApp: 0,
          ),
        ),

        body: RegisterBlocWidget(formKey: _formKey, emailController: _emailController, passwordController: _passwordController, confirmPasswordController: _confirmPasswordController),
      ),
    );
  }
}

