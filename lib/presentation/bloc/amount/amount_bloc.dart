import 'package:desafio/domain/usecases/get_amount.dart';
import 'package:desafio/presentation/bloc/amount/amount_event.dart';
import 'package:desafio/presentation/bloc/amount/amount_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AmountBloc extends Bloc<AmountEvent, AmountState> {
  final GetAmount _getAmount;

  AmountBloc(this._getAmount) : super(AmountEmpty()) {
    on<FetchAmount>(
      (event, emit) async {
        emit(
          AmountLoading(),
        );
        final result = await _getAmount.get();
        result.fold(
          (failure) {
            emit(AmountIsError(failure.message));
          },
          (data) {
            emit(AmountHasData(data));
          },
        );
      },
    );
  }
}
