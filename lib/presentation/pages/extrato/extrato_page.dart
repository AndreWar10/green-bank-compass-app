import 'package:desafio/presentation/injection.dart';
import 'package:desafio/presentation/bloc/statement/statement_bloc.dart';
import 'package:desafio/presentation/bloc/statement/statement_event.dart';
import 'package:desafio/presentation/pages/extrato/statement_page.dart';

import 'package:flutter/material.dart';

class ExtratoPage extends StatelessWidget {
  const ExtratoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtratoBody();
  }
}

class ExtratoBody extends StatefulWidget {
  const ExtratoBody({Key? key}) : super(key: key);

  @override
  State<ExtratoBody> createState() => _ExtratoPageState();
}

class _ExtratoPageState extends State<ExtratoBody> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return StatementPage(controller: _controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onScroll() {
    double maxScroll = _controller.position.maxScrollExtent;
    double currentScroll = _controller.offset;
    if (currentScroll == maxScroll) {
      getIt.get<StatementBloc>().add(FetchStatement());
    }
  }
}
