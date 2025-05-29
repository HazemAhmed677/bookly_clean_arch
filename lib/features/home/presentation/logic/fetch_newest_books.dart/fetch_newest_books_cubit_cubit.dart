// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arch/features/home/domain/use_cases/fetch_newest_books_use_case.dart';

part 'fetch_newest_books_cubit_state.dart';

class FetchNewestBooksCubitCubit extends Cubit<FetchNewestBooksCubitState> {
  FetchNewestBooksCubitCubit({required this.fetchNewestBooksUseCase})
    : super(FetchNewestBooksCubitInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBooksCubit() async {
    emit(FetchNewestBooksCubitLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold(
      (failure) {
        emit(FetchNewestBooksCubitFailuire(errorMsg: failure.errorMsg));
      },
      (listOfBooks) {
        emit(FetchNewestBooksCubitSuccess(books: listOfBooks));
      },
    );
  }
}
