import 'package:flutter/material.dart';
import 'package:money_manager/src/constant/app_color.dart';
import 'package:money_manager/src/utils/app_typedef.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final OnPressed onPressed;
  final Color buttonColor;
  final Color highlightColor;
  final TextStyle? style;
  final Color? splashColor;
  final BorderRadius? borderRadius;

  const AppElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = AppColor.primaryColor,
    this.highlightColor = AppColor.transparent,
    this.style,
    this.splashColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      child: InkWell(
        highlightColor: AppColor.transparent,
        splashColor: splashColor ?? AppColor.black.withOpacity(0.05),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        onTap: onPressed,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: style ??
                const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
          ),
        ),
      ),
    );
  }
}
