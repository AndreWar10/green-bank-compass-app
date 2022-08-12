import 'package:desafio/presentation/widgets/component/home_page/home_appbar.dart';
import 'package:flutter/material.dart';

class IndicarAmigosPage extends StatelessWidget {
  const IndicarAmigosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HomeAppBar(textAppBar: 'Indicar Amigos'),
      ),
      body: Container(),
    );
  }
}
