import 'package:get/get.dart';
import 'package:money_manager/src/features/add_transaction/add_transaction_screen.dart';
import 'package:money_manager/src/features/category/add_category_screen.dart';
import 'package:money_manager/src/features/category/binding/category_binding.dart';
import 'package:money_manager/src/features/category/category_screen.dart';
import 'package:money_manager/src/features/home/home_screen.dart';
import 'package:money_manager/src/features/splash/splash_screen.dart';

enum AppRoute {
  splash('/splash'),
  home('/home'),
  transaction('/transaction'),
  category('/category'),
  addCategory('/add-category');

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
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoute.category.path,
      page: () => const CategoryScreen(),
      binding: CategoryBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoute.addCategory.path,
      page: () => const AddCategoryScreen(),
      transition: Transition.rightToLeft,
    ),
  ];
}
