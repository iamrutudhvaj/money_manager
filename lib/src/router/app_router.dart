import 'package:flutter/material.dart';
import 'package:money_manager/src/features/splash/splash_screen.dart';

import '../features/home/home_screen.dart';
import 'export_router.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    String routeName = settings.name!;
    switch (routeName) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}
