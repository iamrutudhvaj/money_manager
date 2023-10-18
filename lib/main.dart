import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:money_manager/app/app.dart';
import 'package:money_manager/src/constant/app_string.dart';
import 'package:money_manager/src/store/category_store.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init(AppString.categoryStore);
  CategoryStore().initCategory();
  runApp(const App());
}
