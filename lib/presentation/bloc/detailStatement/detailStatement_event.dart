// ignore_for_file: file_names

import 'package:equatable/equatable.dart';

abstract class DetailStatementEvent extends Equatable {
  const DetailStatementEvent();

  @override
  List<Object?> get props => [];
}

class FetchDetailStatement extends DetailStatementEvent {
  final String id;
  const FetchDetailStatement(this.id);
}
