import 'dart:core';
import 'package:desafio/data/models/detail_statement_model.dart';
import 'package:desafio/presentation/injection.dart';
import 'package:desafio/presentation/bloc/detailStatement/detailStatement_bloc.dart';
import 'package:desafio/presentation/bloc/detailStatement/detailStatement_event.dart';
import 'package:desafio/presentation/bloc/detailStatement/detailStatement_state.dart';
import 'package:desafio/presentation/pages/comprovante/comprovante.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';


class ComprovanteDetailsPage extends StatefulWidget {
  final String id;
  const ComprovanteDetailsPage({Key? key, required this.id}) : super(key: key);

  @override
  State<ComprovanteDetailsPage> createState() => _ComprovanteDetailsPageState();
}

class _ComprovanteDetailsPageState extends State<ComprovanteDetailsPage> {
  late Future<DetStatementModel> detStatement;
  final controller = ScreenshotController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: getIt.get<DetailStatementBloc>()
          ..add(
            FetchDetailStatement(widget.id),
          ),
        builder: (context, state) {
          if (state is DetailStatementEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DetailStatementHasData) {
            return 
            
            ComprovantePage(
              value: state.result,
            );
          } else if (state is DetailStatementIsError) {
            return const Center(
              child: Text('Error'),
            );
          } else {
            return const Center(
              child: Text(''),
            );
          }
        },
      ),
    );
  }
}
