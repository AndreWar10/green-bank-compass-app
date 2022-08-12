import 'package:desafio/domain/entities/amount.dart';
import 'package:desafio/presentation/widgets/component/error/failure.dart';

import 'package:either_dart/either.dart';


abstract class AmountRepository {
  Future<Either<Failure, Amount>> getAmount();
}
