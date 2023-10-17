import 'package:flutter/material.dart';
import 'package:money_manager/src/constant/app_color.dart';

abstract class AppTextStyle {
  static TextStyle get style400 {
    return const TextStyle(
      color: AppColor.white54,
      fontWeight: FontWeight.w400,
      fontSize: 17,
    );
  }
}
