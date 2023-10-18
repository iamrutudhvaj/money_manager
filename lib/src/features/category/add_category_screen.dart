import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/src/constant/app_color.dart';
import 'package:money_manager/src/features/category/controller/category_controller.dart';
import 'package:money_manager/src/utils/app_input_border.dart';
import 'package:money_manager/src/utils/size_extension.dart';
import 'package:money_manager/src/widgets/app_elevated_button.dart';

class AddCategoryScreen extends GetView<CategoryController> {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        title:
            Obx(() => Text('${controller.categoryType.value.name} category')),
        backgroundColor: AppColor.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          children: [
            TextFormField(
              controller: controller.controller,
              style: const TextStyle(color: AppColor.white),
              cursorColor: controller.categoryType.value.color,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                focusedBorder: AppInputBorder.focusBorder.copyWith(
                  borderSide:
                      BorderSide(color: controller.categoryType.value.color),
                ),
                enabledBorder: AppInputBorder.enableBorder,
              ),
            ),
            SizedBox(height: 3.h),
            AppElevatedButton(
              text: 'Save',
              onPressed: () {
                String text = controller.controller.text.trim();
                if (text.trim().isNotEmpty) {
                  String key = controller.categoryType.value.name;
                  controller.addCategory(
                    key,
                    controller.controller.text.trim(),
                    index: 0,
                  );
                  Get.back();
                } else {
                  Get.snackbar(
                    'Enter valid category',
                    'Category not be empty',
                    colorText: AppColor.white,
                    snackPosition: SnackPosition.BOTTOM,
                    margin: EdgeInsets.only(bottom: 1.h, left: 3.w, right: 3.w),
                  );
                }
              },
              buttonColor: controller.categoryType.value.color,
            ),
          ],
        ),
      ),
    );
  }
}
