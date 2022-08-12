
import 'package:desafio/presentation/widgets/component/base_appbar_pages/custom_app_bar.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/forgotpassword_page/forgot_bloc_widget.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(
          navigator: () {Navigator.pop(context);},
          icon: const Icon(Icons.keyboard_arrow_left),
          iconSize: 35,
          colorIcon: BaseColors().getBlackColor(),
          elevationApp: 0,
          backgroundColorApp: Colors.transparent,
          scrolledUnderElevationApp: 0,
        ),
      ),
      body: ForgotBlocWidget(emailController: _emailController),
    );
  }

  
}


