// ignore_for_file: file_names
import 'package:desafio/domain/entities/detailStatement.dart';
import 'package:desafio/presentation/widgets/component/error/failure.dart';
import 'package:either_dart/either.dart';

abstract class DetStatementsRepository {
  Future<Either<Failure,DetStatement>> getStatementsDetail(String id);
}
