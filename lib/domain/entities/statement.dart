import 'package:equatable/equatable.dart';

class Statement extends Equatable {
  const Statement({
    required this.createdAt,
    required this.id,
    required this.amount,
    required this.description,
    required this.tType,
    this.to,
    this.from,
    this.bankName,
  });

  final DateTime createdAt;
  final String id;
  final int amount;
  final String description;
  final String tType;
  final String? bankName;
  final String? from;
  final String? to;

  @override
  List<Object?> get props => [
        createdAt,
        id,
        amount,
        to,
        description,
        tType,
        from,
        bankName,
      ];
}
