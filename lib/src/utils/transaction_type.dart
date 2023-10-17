import 'package:flutter/material.dart';
import 'package:money_manager/src/constant/app_color.dart';

enum TransactionType {
  income('Income',AppColor.blue),
  expense('Expense',AppColor.red),
  transfer('Transfer',AppColor.white);

  final String name;
  final Color color;
  const TransactionType(this.name,this.color);
}
