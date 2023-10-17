import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/src/constant/app_material_color.dart';
import 'package:money_manager/src/constant/app_string.dart';
import 'package:money_manager/src/router/app_router.dart';

late Size size;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: AppString.fontName,
        primarySwatch: AppMaterialColor.primaryColor,
      ),
      initialRoute: AppRoute.home.path,
      getPages: AppRoutePages.pages,
    );
  }
}
