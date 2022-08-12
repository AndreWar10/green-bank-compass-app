import 'package:desafio/domain/entities/statement.dart';
import 'package:desafio/domain/repositories/statement_repository_imp.dart';
import 'package:desafio/presentation/widgets/component/error/failure.dart';
import 'package:either_dart/either.dart';


class GetStatements {
  final StatementsRepository repository;
  GetStatements(this.repository);

  Future<Either<Failure, List<Statement>>> get(int defautLimit,int offset) {
    // ignore: avoid_print
    print('getting extrato api..');
    return repository.getStatements(defautLimit, offset);
  }
}
