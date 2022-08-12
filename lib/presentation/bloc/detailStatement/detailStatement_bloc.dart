// ignore_for_file: file_names

import 'package:desafio/domain/usecases/get_detail_statements.dart';
import 'package:desafio/presentation/bloc/detailStatement/detailStatement_event.dart';
import 'package:desafio/presentation/bloc/detailStatement/detailStatement_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailStatementBloc
    extends Bloc<DetailStatementEvent, DetailStatementState> {
  final GetDetStatements _getDetailStatement;

  DetailStatementBloc(this._getDetailStatement)
      : super(DetailStatementEmpty()) {
    on<FetchDetailStatement>(
      (event, emit) async {
        emit(DetailStatementLoading());

        final result = await _getDetailStatement.get(event.id);
        result.fold(
          (failure) {
            emit(DetailStatementIsError(failure.message));
          },
          (data) {
            emit(DetailStatementHasData(data));
          },
        );
      },
    );
  }
}
