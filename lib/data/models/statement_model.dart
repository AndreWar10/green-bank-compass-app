import 'package:desafio/domain/entities/statement.dart';
import 'package:intl/intl.dart';

class StatementModel {
  StatementModel({
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
  String? from;
  String? to;

  factory StatementModel.fromJson(Map<String, dynamic> json) => StatementModel(
        createdAt: DateTime.parse(json["createdAt"]),
        id: json["id"],
        amount: json["amount"],
        to: json["to"],
        description: json["description"],
        tType: json["tType"],
        from: json["from"],
        bankName: json["bankName"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": DateFormat("yyyy-MM-dd'T'hh:mm:ss'Z'").format(createdAt),
        "id": id,
        "amount": amount,
        "to": to,
        "description": description,
        "tType": tType,
        "from": from,
        "bankName": bankName,
      };

  Statement toEntity() => Statement(
        createdAt: createdAt,
        id: id,
        amount: amount,
        to: to,
        description: description,
        tType: tType,
        from: from,
        bankName: bankName,
      );

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
