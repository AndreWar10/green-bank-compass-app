import 'package:desafio/domain/usecases/get_statements.dart';
import 'package:desafio/presentation/bloc/statement/statement_event.dart';
import 'package:desafio/presentation/bloc/statement/statement_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatementBloc extends Bloc<StatementEvent, StatementState> {
  final GetStatements _getStatement;
  int defautLimit = 10;
  int offset = 0;

  StatementBloc(this._getStatement) : super(StatementIsEmpty()) {
    on<FetchStatement>(
      (event, emit) async {
        if (state is StatementIsEmpty) {
          final result = await _getStatement.get(defautLimit, offset);

          result.fold(
            (failure) {
              emit(StatementIsError(failure.message));
            },
            (data) {
              offset++;
              emit(StatementHasData(statement: data, hasReachedMax: false));
            },
          );
          return;
        }

        if (state is StatementHasData) {
          StatementHasData statementLoaded = state as StatementHasData;

          final result = await _getStatement.get(defautLimit, offset);

          return result.fold(
            (failure) {
              emit(StatementIsError(failure.message));
            },
            (data) {
              offset++;
              data.isEmpty
                  ? emit(statementLoaded.copyWith(hasReachedMax: true))
                  : emit(statementLoaded.copyWith(
                      statement: statementLoaded.statement + data));
            },
          );

        }
      },
    );
  }
}
