import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteData{
Future<List<BookEntity>> fetchNewestBooks();
Future<List<BookEntity>> fetchFeaturedBooks();
}

class HomeRemoteDataImpl extends HomeRemoteData{
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

}