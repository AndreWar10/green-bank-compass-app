import 'package:desafio/domain/entities/detailStatement.dart';
import 'package:intl/intl.dart';

class DetStatementModel {
  DetStatementModel({
    required this.amount,
    required this.id,
    required this.authentication,
    required this.tType,
    required this.createdAt,
     this.to,
     this.from,
     this.bankName,
    required this.description,
  });
   final int amount;
   final String id;
   final String authentication;
   final String? bankName;
   final String tType;
   final DateTime createdAt;
   final String? to;
   final String? from;
   final String description;
  
  factory DetStatementModel.fromJson(Map<String, dynamic> json) => DetStatementModel(
    amount: json['amount'],
    id: json['id'],
    authentication: json['authentication'],
    tType: json['tType'],
    createdAt: DateTime.parse(json['createdAt']),
    to: json['to'],
    from: json['from'],
    bankName: json['bankName'],
    description: json['description'],
    );
  

  Map<String, dynamic> toJson() => {
    'amount': amount,
    'id': id,
    'authentication': authentication,
    'tType': tType,
    "createdAt": DateFormat("yyyy-MM-dd'T'hh:mm:ss'Z'").format(createdAt),
    'to': to,
    'from': from,
    'bankName': bankName,
    'description': description,
  };

  DetStatement toEntity() => DetStatement(
        createdAt: createdAt,
        id: id,
        amount: amount,
        to: to,
        from: from,
        description: description,
        bankName: bankName,
        tType: tType,
        authentication: authentication,
      );

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