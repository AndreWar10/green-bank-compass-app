import 'package:desafio/domain/entities/amount.dart';
import 'package:equatable/equatable.dart';

class AmountModel extends Equatable{
  final int amount;

  const AmountModel({required this.amount});

   AmountModel copyWith({required int amount}) => AmountModel(amount: amount);

  factory AmountModel.fromJson(Map<String, dynamic> json) =>
    AmountModel(amount: json['amount']);
  

  Map<String, dynamic> toJson() => {'amount': amount};

  Amount toEntity() => Amount(amount: amount);

  @override
  List<Object?> get props => [amount];


    
  
}