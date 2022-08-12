import 'package:desafio/domain/entities/statement.dart';
import 'package:equatable/equatable.dart';

abstract class StatementState extends Equatable {
  const StatementState();

  @override
  List<Object?> get props => [];
}

class StatementIsEmpty extends StatementState {}

class StatementIsError extends StatementState {
  final String message;
  const StatementIsError(this.message);

  @override
  List<Object?> get props => [message];
}

class StatementHasData extends StatementState {
  final List<Statement> statement;
  final bool hasReachedMax;

  const StatementHasData({
    this.statement = const <Statement>[],
    this.hasReachedMax = false,
  });

  StatementHasData copyWith({
    List<Statement>? statement,
    bool? hasReachedMax,
  }) {
    
    return StatementHasData(
      statement: statement ?? this.statement,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object?> get props => [statement, hasReachedMax];
}
