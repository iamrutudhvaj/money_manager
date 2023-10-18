import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/src/store/category_store.dart';
import 'package:money_manager/src/utils/transaction_type.dart';

class CategoryController extends GetxController {
  TextEditingController controller = TextEditingController();
  CategoryStore categoryStore = CategoryStore();
  Rx<TransactionType> categoryType = TransactionType.income.obs;
  RxList<String> category = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    TransactionType type = Get.arguments;
    categoryType.value = type;
    getCategory(type.name);
  }

  void getCategory(String type) {
    category.clear();
    List<dynamic> categories = categoryStore.getCategory(type);
    for (var element in categories) {
      category.add(element);
    }
  }

  void removeCategory(String type, String value) {
    categoryStore.removeCategory(type, value);
    getCategory(type);
  }

  void addCategory(String type, String value,{int? index}) {
    categoryStore.addCategory(type, value, index: index);
    getCategory(type);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
