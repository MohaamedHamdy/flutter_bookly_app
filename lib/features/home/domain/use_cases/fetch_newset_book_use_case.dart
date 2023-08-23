import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repo/home_repo.dart';
import 'package:bookly/features/home/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewsetBooksUseCase extends UseCases<List<BookEntity>,void> {

  final HomeRepo homeRepo;

  FetchNewsetBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) {
    return homeRepo.fetchNewestBooks();
  }
}

