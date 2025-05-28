// ignore: depend_on_referenced_packages
import 'package:bookly_clean_arch/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

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
