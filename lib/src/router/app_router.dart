import 'package:get/get.dart';
import 'package:money_manager/src/features/add_transaction/add_transaction_screen.dart';
import 'package:money_manager/src/features/home/home_screen.dart';
import 'package:money_manager/src/features/splash/splash_screen.dart';

enum AppRoute {
  splash('/splash'),
  home('/home'),
  transaction('/transaction');

  final String path;
  const AppRoute(this.path);
}

abstract class AppRoutePages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoute.splash.path,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoute.home.path,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoute.transaction.path,
      page: () => const AppTransactionScreen(),
    ),
  ];
}
