// ignore_for_file: file_names
import 'dart:convert';
import 'package:desafio/data/models/detail_statement_model.dart';
import 'package:desafio/data/utils/api.dart';
import 'package:desafio/presentation/widgets/component/error/exception.dart';
import 'package:http/http.dart' as http;

abstract class DetStatementsRemoteDataSource {
  Future<DetStatementModel> getDetStatement(String id);
}

class DetStatementsRemoteDataSourceImpl
    implements DetStatementsRemoteDataSource {
  final http.Client client;
  DetStatementsRemoteDataSourceImpl({required this.client});

  @override
  Future<DetStatementModel> getDetStatement(String id) async {
    var response = await client.get(
      Uri.parse(API.statementDetail(id)),
      headers: API.defaultHeaders,
    );

    if (response.statusCode == 200) {
      return DetStatementModel.fromJson(json.decode(response.body));

    } else {
      throw ServerException();
    }
  }
}
