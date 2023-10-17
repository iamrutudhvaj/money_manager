import 'package:flutter/material.dart';
import 'package:money_manager/src/constant/app_color.dart';

abstract class AppInputBorder {
  static InputBorder get enableBorder {
    return const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColor.white30),
    );
  }
  static InputBorder get focusBorder {
    return const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColor.white),
    );
  }
}
