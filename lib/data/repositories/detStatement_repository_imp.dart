// ignore_for_file: file_names

import 'dart:io';
import 'package:desafio/data/datasources/detStatements_remote_ds.dart';
import 'package:desafio/domain/entities/detailStatement.dart';
import 'package:desafio/domain/repositories/detStatement_repository_imp.dart';
import 'package:desafio/presentation/widgets/component/error/exception.dart';
import 'package:desafio/presentation/widgets/component/error/failure.dart';
import 'package:either_dart/either.dart';


class DetStatementsRepositoryImpl implements DetStatementsRepository {
  final DetStatementsRemoteDataSource detRemoteDataSource;
  DetStatementsRepositoryImpl({required this.detRemoteDataSource});

  @override
  Future<Either<Failure, DetStatement>> getStatementsDetail(String id) async {
    try {
      final result = await detRemoteDataSource.getDetStatement(id);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the Network'));
    }
  }
}
