import 'package:bookly_clean_arch/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeatchBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeatchBooks() {
    // var box = box.open<BookEntity>(CachingConstants.kFeaturedBooksBox);
    // return box.values;
    throw Exception();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // var box = Hive.open<BookEntity>(CachingConstants.kNewestBooksBox);
    // return box.values;
    throw Exception();
  }
}
