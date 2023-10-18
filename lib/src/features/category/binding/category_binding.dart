import 'package:get/get.dart';
import 'package:money_manager/src/features/category/controller/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryController());
  }
}
