import 'package:desafio/presentation/widgets/component/extrato_page/custom_card_amount.dart';
import 'package:desafio/presentation/widgets/component/extrato_page/statements_list_widget.dart';
import 'package:flutter/material.dart';

class StatementPage extends StatefulWidget {
  const StatementPage({
    Key? key,
    required this.controller,
  }) : super(key: key);
  
  final ScrollController controller;
  @override
  State<StatementPage> createState() => _StatementPageState();
}

class _StatementPageState extends State<StatementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          'Extrato',
          style: TextStyle(
            letterSpacing: 0,
            fontSize: 20,
            fontFamily: 'Khalid',
            fontWeight: FontWeight.bold,
            shadows: const <Shadow>[
              Shadow(
                offset: Offset(1.0, 4.0),
                blurRadius: 8.0,
                color: Color.fromARGB(255, 190, 185, 185),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          CustomCardAmount(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 12, left: 15, bottom: 12),
                child: SizedBox(
                  child: Text(
                    'Suas movimentações',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            //flex: 10,
            child: StatementsListWidget(
              controller: widget.controller,
              //state: widget.state,
            ),
          ),
        ],
      ),
    );
  }
}
