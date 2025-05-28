// ignore: depend_on_referenced_packages
import 'package:bookly_clean_arch/core/routes/routes.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kBookDetails = '/bookDetails';
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
              duration: 300,
              key: state.pageKey,
              child: const HomeView(),
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
