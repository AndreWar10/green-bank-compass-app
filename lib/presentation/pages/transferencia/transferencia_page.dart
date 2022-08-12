import 'package:desafio/presentation/widgets/component/home_page/home_appbar.dart';
import 'package:flutter/material.dart';

class TransferenciaPage extends StatelessWidget {
  const TransferenciaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HomeAppBar(textAppBar: 'Transferir'),
      ),
      body: Container(),      
    );
    
  }
}