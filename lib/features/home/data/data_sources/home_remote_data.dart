import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteData {
  Future<List<BookEntity>> fetchNewestBooks();

  Future<List<BookEntity>> fetchFeaturedBooks();
}

class HomeRemoteDataImpl extends HomeRemoteData {
  final ApiService apiService;

  HomeRemoteDataImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(endPoint: "volumes?q=computer science&Filtering=free-ebooks");
    List<BookEntity> books = parseData(data);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?q=computer science&Sorting=newest&Filtering=free-ebooks");
    List<BookEntity> books = parseData(data);
    return books;
  }

  List<BookEntity> parseData(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
