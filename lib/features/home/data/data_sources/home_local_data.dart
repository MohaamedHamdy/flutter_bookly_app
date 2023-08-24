import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalData {
  List<BookEntity> fetchNewestBooks();

  List<BookEntity> fetchFeaturedBooks();
}

class HomeLocalDataImpl extends HomeLocalData {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
