import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/features/home/presentation/views/home.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
