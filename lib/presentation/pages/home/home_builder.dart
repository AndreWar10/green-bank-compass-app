import 'package:desafio/presentation/pages/home/home_page.dart';
import 'package:desafio/presentation/pages/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeStreamBuilder extends StatelessWidget {
  const HomeStreamBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snaphot) {
        if (snaphot.hasData) {
          return const HomePage();
        }
        return Onboard();
      },
    );
  }
}
