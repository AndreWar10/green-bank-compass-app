import 'package:desafio/presentation/bloc/auth/auth_bloc.dart';
import 'package:desafio/presentation/pages/signIn/sign_in_page.dart';
import 'package:desafio/presentation/widgets/component/register_page/custom_bottom_singup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting the user from the FirebaseAuth Instance
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            // Navigate to the sign in screen when the user Signs Out
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
              (route) => false,
            );
          }
        },
        child: Container(
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bem Vindo \n ${user.email}',
                  style: const TextStyle(fontSize: 26,),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25,
                ),
                CustomButtomSingUp(
                  heightContainerButtom: 60,
                  marginButtom: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    // Signing out the user

                    context.read<AuthBloc>().add(
                          SignOutRequested(),
                        );
                  },
                  textButtom: 'Fazer Login',
                  colorTextButtom: BaseColors().getWhiteColor(),
                  fontSizeText: 17,
                  fontWeightText: FontWeight.bold,
                  backgroundColorButtom: MaterialStateProperty.all(
                    BaseColors().getGreenColor(),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
