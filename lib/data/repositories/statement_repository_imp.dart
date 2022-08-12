import 'dart:io';

import 'package:desafio/data/datasources/statements_remote_ds.dart';
import 'package:desafio/domain/entities/statement.dart';
import 'package:desafio/domain/repositories/statement_repository_imp.dart';
import 'package:desafio/presentation/widgets/component/error/exception.dart';
import 'package:desafio/presentation/widgets/component/error/failure.dart';

import 'package:either_dart/either.dart';


class StatementsRepositoryImpl implements StatementsRepository {
  final StatementsRemoteDataSource stetementRemoteDataSource;
  StatementsRepositoryImpl({required this.stetementRemoteDataSource});

  @override
  Future<Either<Failure, List<Statement>>> getStatements(
       int defautLimit, int offset) async {
    try {
      final result = await stetementRemoteDataSource.getStatements(defautLimit, offset);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the Network'));
    }
  }
}
