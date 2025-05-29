import 'package:bookly_clean_arch/core/errors/faluire_class.dart';
import 'package:bookly_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo {
  Future<Either<ServerFaluire, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<ServerFaluire, List<BookEntity>>> fetchNewestBooks();
}
