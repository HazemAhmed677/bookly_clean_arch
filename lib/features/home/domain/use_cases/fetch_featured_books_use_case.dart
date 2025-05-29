import 'package:bookly_clean_arch/core/errors/faluire_class.dart';
import 'package:bookly_clean_arch/core/utils/use_case.dart';
import 'package:bookly_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arch/features/home/domain/repos/home_repo.dart';
import 'package:either_dart/either.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<ServerFaluire, List<BookEntity>>> call([void noParams]) {
    // for ex check permission
    return homeRepo.fetchFeaturedBooks();
  }
}
