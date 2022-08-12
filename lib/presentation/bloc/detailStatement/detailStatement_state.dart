// ignore_for_file: file_names

import 'package:desafio/domain/entities/detailStatement.dart';
import 'package:equatable/equatable.dart';

abstract class DetailStatementState extends Equatable {
  const DetailStatementState();

  @override
  List<Object?> get props => [];
}

class DetailStatementEmpty extends DetailStatementState {}

class DetailStatementLoading extends DetailStatementState {}

class DetailStatementIsError extends DetailStatementState {
  final String message;

  const DetailStatementIsError(this.message);

  @override
  List<Object?> get props => [message];
}

class DetailStatementHasData extends DetailStatementState {
  final DetStatement result;

  const DetailStatementHasData(this.result);

  @override
  List<Object?> get props => [result];
}
