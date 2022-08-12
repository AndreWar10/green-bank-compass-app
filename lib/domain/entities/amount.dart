import 'package:equatable/equatable.dart';

class Amount extends Equatable {
  const Amount ({required this.amount});

  final int amount;
  @override
  List<Object?> get props => [amount];
}