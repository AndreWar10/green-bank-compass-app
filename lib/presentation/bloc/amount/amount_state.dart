import 'package:desafio/domain/entities/amount.dart';
import 'package:equatable/equatable.dart';

abstract class AmountState extends Equatable {
  const AmountState();

  @override
  List<Object?> get props => [];
}

class AmountEmpty extends AmountState {}

class AmountLoading extends AmountState {}

class AmountIsError extends AmountState {
  final String message;
  const AmountIsError(this.message);

  @override
  List<Object?> get props => [message];
}

class AmountHasData extends AmountState {
  final Amount result;
  const AmountHasData(this.result);

  @override
  List<Object?> get props => [result];
}
