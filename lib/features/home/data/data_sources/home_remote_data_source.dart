import 'package:bookly_clean_arch/core/networking/api_service.dart';
import 'package:bookly_clean_arch/core/networking/api_sturctures.dart';
import 'package:bookly_clean_arch/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(endpoint: ApiEndpoints.featuredBooks);
    List<BookEntity> books = [];
    for (var ele in data['items']) {
      books.add(ele);
    }
    // cacheBooks(books: books, boxName: CachingConstants.kFeaturedBooksBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(endpoint: ApiEndpoints.newestBooks);
    List<BookEntity> books = [];
    for (var ele in data['data']) {
      books.add(ele);
    }
    // cacheBooks(books: books, boxName: CachingConstants.kNewestBooksBox);
    return books;
  }

  void cacheBooks({
    required List<BookEntity> books,
    required String boxName,
  }) async {
    // var box = await Hive.openBox<BookEntity>(boxName);
    // for(var book in books)
    //   await box.put(book.id, book);
  }
}
