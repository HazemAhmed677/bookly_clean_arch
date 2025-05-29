// ignore: depend_on_referenced_packages
import 'package:bookly_clean_arch/core/routes/routes.dart';
import 'package:bookly_clean_arch/core/utils/service_locator.dart';
import 'package:bookly_clean_arch/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_clean_arch/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_clean_arch/features/home/presentation/logic/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:bookly_clean_arch/features/home/presentation/logic/fetch_newest_books.dart/fetch_newest_books_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../widgets/customm_transition_page.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Routes.homeView,
        pageBuilder:
            (context, state) => CustommTransitionPage(
              duration: 200,
              key: state.pageKey,
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create:
                        (context) => FetchFeaturedBooksCubit(
                          useCase: FetchFeaturedBooksUseCase(
                            homeRepo: getIt.get<HomeRepoImpl>(),
                          ),
                        )..fetchFeaturedBooks(),
                  ),
                  BlocProvider(
                    create:
                        (context) => FetchNewestBooksCubitCubit(
                          fetchNewestBooksUseCase: FetchNewestBooksUseCase(
                            homeRepo: getIt.get<HomeRepoImpl>(),
                          ),
                        )..fetchNewestBooksCubit(),
                  ),
                  // BlocProvider(create: (context) => SubjectBloc()),
                ],
                child: const HomeView(),
              ),
            ),
      ),
      GoRoute(
        path: Routes.bookDetailsView,
        pageBuilder:
            (context, state) => CustommTransitionPage(
              duration: 200,
              key: state.pageKey,
              child: BookDetailsView(),
            ),
      ),
      GoRoute(
        path: Routes.searchView,
        pageBuilder:
            (context, state) => CustommTransitionPage(
              duration: 200,
              key: state.pageKey,
              child: const SearchView(),
            ),
      ),
    ],
  );
}
