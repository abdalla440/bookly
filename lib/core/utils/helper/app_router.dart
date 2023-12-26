import '../../../features/search/presentation/views/search_screen_page.dart';
import 'package:go_router/go_router.dart';
import '../../../features/Home/presentation/views/book_details_screen_page.dart';
import '../../../features/Home/presentation/views/home_screen_page.dart';
import '../../../features/Splash/presentation/views/splash_screen_page.dart';

abstract class AppRouter {
  static const kHomeScreenPage = '/HomeScreenPage';
  static const kBookDetailsScreenPage = '/BookDetailsScreenPage';
  static const kBookSearchScreenPage = '/Search';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreenPage(),
    ),
    GoRoute(
      path: kBookSearchScreenPage,
      builder: (context, state) => const SearchScreenPage(),
    ),
    GoRoute(
      path: kHomeScreenPage,
      builder: (context, state) => const HomeScreenPage(),
    ),
    GoRoute(
      path: kBookDetailsScreenPage,
      builder: (context, state) => const BookDetailsScreenPage(),
    ),
  ]);
}
