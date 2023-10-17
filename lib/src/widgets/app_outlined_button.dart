import 'package:flutter/material.dart';
import 'package:money_manager/src/constant/app_color.dart';
import 'package:money_manager/src/utils/app_typedef.dart';

class AppOutlinedButton extends StatelessWidget {
  final String text;
  final OnPressed onPressed;
  final Color buttonColor;
  final Color highlightColor;
  final Color borderColor;
  final TextStyle? style;
  final Color? splashColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  const AppOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = AppColor.transparent,
    this.highlightColor = AppColor.transparent,
    this.borderColor = AppColor.white54,
    this.style,
    this.splashColor,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      child: InkWell(
        highlightColor: AppColor.transparent,
        splashColor: splashColor ?? AppColor.black.withOpacity(0.5),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        onTap: onPressed,
        child: Container(
          padding: padding,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
            border: Border.all(color: borderColor),
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
