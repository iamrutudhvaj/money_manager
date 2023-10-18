import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/src/constant/app_color.dart';
import 'package:money_manager/src/features/category/controller/category_controller.dart';
import 'package:money_manager/src/router/app_router.dart';
import 'package:money_manager/src/utils/size_extension.dart';

class CategoryScreen extends GetView<CategoryController> {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        title:
            Obx(() => Text('${controller.categoryType.value.name} category')),
        backgroundColor: AppColor.transparent,
        actions: [
          IconButton(
            splashColor: AppColor.transparent,
            highlightColor: AppColor.transparent,
            onPressed: () {
              Get.toNamed(AppRoute.addCategory.path);
            },
            icon: const Icon(Icons.add),
          ),
          SizedBox(width: 3.w),
        ],
      ),
      body: Obx(
        () => ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: controller.category.length,
          itemBuilder: (context, index) {
            String text = controller.category[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
              child: Row(
                children: [
                  Material(
                    color: AppColor.red,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      splashColor: AppColor.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                      highlightColor: AppColor.transparent,
                      onTap: () {
                        controller.removeCategory(
                          controller.categoryType.value.name,
                          text,
                        );
                      },
                      child: const SizedBox(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.remove,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: AppColor.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  IconButton(
                    splashColor: AppColor.transparent,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: AppColor.white54,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
