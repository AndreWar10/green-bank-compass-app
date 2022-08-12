

import 'package:equatable/equatable.dart';

abstract class StatementEvent extends Equatable {
  const StatementEvent();

  @override
  List<Object?> get props => [];
}

class FetchStatement extends StatementEvent {

} 
class RefreshedStatement extends StatementEvent {
} 