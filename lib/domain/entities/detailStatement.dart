// ignore_for_file: file_names

import 'package:equatable/equatable.dart';

class DetStatement extends Equatable{
  const DetStatement({
    required this.amount,
    required this.id,
    required this.authentication,
    required this.tType,
    required this.createdAt,
    required this.description,
    this.bankName,
    this.to,
    this.from,
  });
  final int amount;
  final String id;
  final String authentication;
  final String tType;
  final DateTime createdAt;
  final String? to;
  final String? from;
  final String? bankName;
  final String description;

  @override
  List<Object?> get props => [
        amount,
        id,
        authentication,
        tType,
        createdAt,
        to,
        from,
        bankName,
        description
      ];
}
