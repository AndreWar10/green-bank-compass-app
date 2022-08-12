import 'package:desafio/presentation/injection.dart';
import 'package:desafio/presentation/bloc/statement/statement_bloc.dart';
import 'package:desafio/presentation/bloc/statement/statement_event.dart';
import 'package:desafio/presentation/bloc/statement/statement_state.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/base_loading_pages/loading_progress.dart';
import 'package:desafio/presentation/widgets/component/extrato_page/custom_card_statement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatementsListWidget extends StatefulWidget {
  final ScrollController controller;
  const StatementsListWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<StatementsListWidget> createState() => _StatementsListWidgetState();
}

class _StatementsListWidgetState extends State<StatementsListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatementBloc, StatementState>(
      bloc: getIt.get<StatementBloc>()..add(FetchStatement()),
      builder: (context, state) {
        if (state is StatementIsEmpty) {
          return CustomLoading();
        }

        if (state is StatementHasData) {
          if (state.statement.isEmpty) {
            return Text('No Statements');
          }

          return ListView.builder(
            shrinkWrap: true,
            controller: widget.controller,
            itemCount: state.hasReachedMax
                ? state.statement.length
                : state.statement.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index >= state.statement.length) return CustomLoading();

              return Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: CustomCardStatement(
                      statement: state.statement[index],
                      idx: index,
                    ),
                  ),
                  Positioned(
                    top: 0.0,
                    bottom: 0.0,
                    left: 25.0,
                    child: Container(
                      height: double.infinity,
                      width: 0.5,
                      color: BaseColors().getGreyColor(),
                    ),
                  ),
                  Positioned(
                    top: 42.0,
                    left: 15.0,
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: BaseColors().getGreenColor(),
                      ),
                    ),
                  )
                ],
              );
            },
          );
        } else if (state is StatementIsError) {
          return const Center(
            child: Text('Error'),
          );
        } else {
          return const Center(
            child: Text(''),
          );
        }
      },
    );
  }
}
