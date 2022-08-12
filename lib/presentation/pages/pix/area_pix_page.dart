import 'package:desafio/presentation/widgets/component/home_page/home_appbar.dart';
import 'package:flutter/material.dart';

class AreaPixPage extends StatelessWidget {
  const AreaPixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HomeAppBar(textAppBar: 'Área Pix'),
      ),
      body: Container(),      
    );
    
  }
}