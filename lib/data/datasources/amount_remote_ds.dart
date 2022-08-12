import 'dart:convert';
import 'package:desafio/data/models/amount_model.dart';
import 'package:desafio/data/utils/api.dart';
import 'package:desafio/presentation/widgets/component/error/exception.dart';
import 'package:http/http.dart' as http;

abstract class AmountRemoteDataSource {
  Future<AmountModel> getAmount();
}

class AmountRemoteDataSourceImpl implements AmountRemoteDataSource {
  final http.Client client;
  AmountRemoteDataSourceImpl({required this.client});

  @override
  Future<AmountModel> getAmount() async {
    final response = await client.get(Uri.parse(API.amount), headers: API.defaultHeaders);

    if (response.statusCode == 200) {
      return AmountModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
