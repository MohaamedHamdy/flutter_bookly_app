import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo{
  Future<List<BookEntity>> fetchNewsetBooks();
  Future<List<BookEntity>> fetchFeaturedBooks();
}
