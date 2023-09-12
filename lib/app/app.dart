import 'package:flutter/material.dart';
import 'package:money_manager/src/constant/app_material_color.dart';
import 'package:money_manager/src/constant/app_string.dart';
import '../src/router/export_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: AppString.fontName,
        primarySwatch: AppMaterialColor.primaryColor,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.splashRoute,
    );
  }
}
