import 'package:flutter/material.dart';
import 'package:money_manager/src/constant/app_color.dart';
import 'package:money_manager/src/utils/app_input_border.dart';
import 'package:money_manager/src/utils/app_text_style.dart';
import 'package:money_manager/src/utils/app_typedef.dart';
import 'package:money_manager/src/utils/size_extension.dart';
import 'package:money_manager/src/utils/transaction_type.dart';

class SaveTransactionWidget extends StatelessWidget {
  const SaveTransactionWidget({
    super.key,
    required this.type,
    required this.dateController,
    required this.amountController,
    required this.categoryController,
    required this.accountController,
    required this.noteController,
    required this.onDateClick,
    required this.onCategoryClick,
    required this.onAccountClick,
  });

  final TransactionType type;
  final TextEditingController dateController;
  final TextEditingController amountController;
  final TextEditingController categoryController;
  final TextEditingController accountController;
  final TextEditingController noteController;
  final OnPressed onDateClick;
  final OnPressed onCategoryClick;
  final OnPressed onAccountClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Date',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        onTap: onDateClick,
                        controller: dateController,
                        readOnly: true,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Amount',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        controller: amountController,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Category',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        onTap: onCategoryClick,
                        controller: categoryController,
                        readOnly: true,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Account',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        onTap: onAccountClick,
                        controller: accountController,
                        readOnly: true,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Note',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        controller: noteController,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SaveTransferTransactionWidget extends StatelessWidget {
  const SaveTransferTransactionWidget({
    super.key,
    required this.type,
    required this.dateController,
    required this.amountController,
    required this.fromController,
    required this.toController,
    required this.noteController,
    required this.onDateClick,
    required this.onFromClick,
    required this.onToClick,
  });

  final TransactionType type;
  final TextEditingController dateController;
  final TextEditingController amountController;
  final TextEditingController fromController;
  final TextEditingController toController;
  final TextEditingController noteController;
  final OnPressed onDateClick;
  final OnPressed onFromClick;
  final OnPressed onToClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Date',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        onTap: onDateClick,
                        controller: dateController,
                        readOnly: true,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Amount',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        controller: amountController,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'From',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        onTap: onFromClick,
                        controller: fromController,
                        readOnly: true,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'To',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        onTap: onToClick,
                        controller: toController,
                        readOnly: true,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Note',
                      style: AppTextStyle.style400,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextFormField(
                        controller: noteController,
                        style: const TextStyle(color: AppColor.white),
                        cursorColor: type.color,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: AppInputBorder.focusBorder.copyWith(
                            borderSide: BorderSide(color: type.color),
                          ),
                          enabledBorder: AppInputBorder.enableBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
