import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class UseCases<T, Param> {
  Future<Either<Failure, T>> call([Param param]);
}
