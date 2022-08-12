import 'package:equatable/equatable.dart';

abstract class AmountEvent extends Equatable {
  const AmountEvent();

  @override
  List<Object?> get props => [];
}

class FetchAmount extends AmountEvent {
  const FetchAmount();
}
