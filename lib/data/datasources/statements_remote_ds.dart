import 'dart:convert';
import 'package:desafio/data/models/statement_model.dart';
import 'package:desafio/data/utils/api.dart';
import 'package:desafio/presentation/widgets/component/error/exception.dart';
import 'package:http/http.dart' as http;

abstract class StatementsRemoteDataSource {
  Future<List<StatementModel>> getStatements(int defautLimit, int offset);
}

class StatementsRemoteDataSourceImpl implements StatementsRemoteDataSource {
  final http.Client client;
  StatementsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<StatementModel>> getStatements(
      int defautLimit, int offset) async {
    var response = await client.get(
      Uri.parse(
        API.statement(defautLimit, offset),
      ),
      headers: API.defaultHeaders,
    );

    if (response.statusCode == 200) {
      var decodedResponse = await json.decode(response.body);
      List statements = decodedResponse['items'] as List;
      List<StatementModel> statement = [
        for (final item in statements) StatementModel.fromJson(item)
      ];

      return statement;
    } else {
      throw ServerException();
    }
  }
}
