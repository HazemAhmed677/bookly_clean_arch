import 'package:bookly_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arch/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit({required this.useCase})
    : super(FetchFeaturedBooksInitial());
  final FetchFeaturedBooksUseCase useCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLoading());
    var result = await useCase.call();
    result.fold(
      (failure) {
        emit(FetchFeaturedBooksFailure(errorMsg: failure.errorMsg));
      },
      (listOfBooks) {
        emit(FetchFeaturedBooksSuccess(books: listOfBooks));
      },
    );
  }
}
