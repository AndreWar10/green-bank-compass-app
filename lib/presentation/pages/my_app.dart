import 'package:desafio/data/repositories/auth_repository.dart';
import 'package:desafio/presentation/bloc/auth/auth_bloc.dart';
import 'package:desafio/presentation/pages/dashboard/dashboard.dart';
import 'package:desafio/presentation/pages/help/help_page.dart';
import 'package:desafio/presentation/pages/home/home_builder.dart';
import 'package:desafio/presentation/pages/home/home_page.dart';
import 'package:desafio/presentation/pages/onboarding/onboarding.dart';
import 'package:desafio/presentation/pages/signIn/sign_in_page.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepository: RepositoryProvider.of<AuthRepository>(context),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: BaseColors().getWhiteColor(),
            brightness: Brightness.light,
          ),
          home: HomeStreamBuilder(),
          routes: {
            '/dashboard': (_) => const Dashboard(),
            '/myapp': (_) => const MyApp(),
            '/home': (_) => const HomePage(),
            '/onboard': (_) => const Onboard(),
            '//help': (_) => const HelpPage(),
            '/login': (_) => const LoginPage(),
          },
        ),
      ),
    );
  }
}
