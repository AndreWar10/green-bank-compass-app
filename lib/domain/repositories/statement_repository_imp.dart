import 'package:desafio/domain/entities/statement.dart';
import 'package:desafio/presentation/widgets/component/error/failure.dart';
import 'package:either_dart/either.dart';


abstract class StatementsRepository {
  Future<Either<Failure,List<Statement>>> getStatements(int defautLimit, int offset);
}

