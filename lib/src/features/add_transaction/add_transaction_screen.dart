import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/src/constant/app_color.dart';
import 'package:money_manager/src/router/app_router.dart';
import 'package:money_manager/src/utils/app_input_border.dart';
import 'package:money_manager/src/utils/date_formate.dart';
import 'package:money_manager/src/utils/size_extension.dart';
import 'package:money_manager/src/utils/transaction_type.dart';
import 'package:money_manager/src/widgets/app_elevated_button.dart';
import 'package:money_manager/src/widgets/app_outlined_button.dart';
import 'package:money_manager/src/widgets/save_transaction_widget.dart';

class AppTransactionScreen extends StatefulWidget {
  final TransactionType? type;
  const AppTransactionScreen({super.key, this.type});

  @override
  State<AppTransactionScreen> createState() => _AppTransactionScreenState();
}

class _AppTransactionScreenState extends State<AppTransactionScreen> {
  TransactionType type = TransactionType.expense;
  final TextEditingController dateController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController accountController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();

  DateTime date = DateTime.now();

  @override
  void initState() {
    type = Get.arguments ?? TransactionType.expense;
    dateController.text = date.string;
    super.initState();
  }

  void onDateClick() async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (newDate == null) return;
    onTimeSelect(newDate);
  }

  void onTimeSelect(DateTime newDate) async {
    TimeOfDay? time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time == null) return;
    date = DateTime(
      newDate.year,
      newDate.month,
      newDate.day,
      time.hour,
      time.minute,
    );
    dateController.text = date.string;
  }

  void onCategoryClick() {
    List<String> category = [
      'Food',
      'Social Life',
      'Pets',
      'Transport',
      'Culture',
      'Household',
      'Apparel',
      'Beauty',
      'Health',
      'Education',
      'Gift',
      'Other',
    ];

    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        decoration:
            const BoxDecoration(color: AppColor.scaffoldBackgroundColor),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: const BoxDecoration(color: AppColor.white30),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: category.length,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.5,
                ),
                itemBuilder: (context, index) => Material(
                  color: AppColor.transparent,
                  child: InkWell(
                    highlightColor: AppColor.transparent,
                    splashColor: type.color.withOpacity(0.1),
                    onTap: () {
                      categoryController.text = category[index];
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.white30, width: 0.1),
                      ),
                      child: Text(
                        category[index],
                        style: const TextStyle(
                          color: AppColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(type.name),
        backgroundColor: AppColor.transparent,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Row(
            children: List.generate(TransactionType.values.length, (index) {
              TransactionType transactionType = TransactionType.values[index];
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Material(
                    color: AppColor.black,
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      highlightColor: AppColor.transparent,
                      splashColor: transactionType.color.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {
                        setState(() {
                          type = transactionType;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: type == transactionType
                                ? transactionType.color
                                : AppColor.white12,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          transactionType.name,
                          style: TextStyle(
                            color: type == transactionType
                                ? transactionType.color
                                : AppColor.white54,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            if (type != TransactionType.transfer) ...[
              SaveTransactionWidget(
                type: type,
                dateController: dateController,
                amountController: amountController,
                categoryController: categoryController,
                accountController: accountController,
                noteController: noteController,
                onDateClick: onDateClick,
                onCategoryClick: onCategoryClick,
                onAccountClick: () {},
              ),
            ] else ...[
              SaveTransferTransactionWidget(
                type: type,
                dateController: dateController,
                amountController: amountController,
                fromController: fromController,
                toController: toController,
                noteController: noteController,
                onDateClick: onDateClick,
                onFromClick: () {},
                onToClick: () {},
              ),
            ],
            SizedBox(height: 3.h),
            Container(
              height: 2.h,
              decoration: const BoxDecoration(
                color: AppColor.black,
                border: Border.symmetric(
                  horizontal: BorderSide(color: AppColor.white12),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: TextFormField(
                controller: descriptionController,
                style: const TextStyle(color: AppColor.white),
                cursorColor: type.color,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  focusedBorder: AppInputBorder.focusBorder.copyWith(
                    borderSide: BorderSide(color: type.color),
                  ),
                  enabledBorder: AppInputBorder.enableBorder,
                  hintText: 'Description',
                  hintStyle:
                      const TextStyle(color: AppColor.white30, fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  Expanded(
                    child: AppElevatedButton(
                      text: 'Save',
                      onPressed: () {},
                      buttonColor: type.color,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: type == TransactionType.transfer
                            ? AppColor.black
                            : AppColor.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 1.5.w),
                  AppOutlinedButton(
                    text: 'Continue',
                    onPressed: () {
                      Get.offAndToNamed(
                        AppRoute.transaction.path,
                        arguments: type,
                      );
                    },
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
