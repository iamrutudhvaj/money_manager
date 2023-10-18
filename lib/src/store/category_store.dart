import 'package:get_storage/get_storage.dart';
import 'package:money_manager/src/constant/app_string.dart';
import 'package:money_manager/src/utils/transaction_type.dart';

class CategoryStore {
  static String expenseCategoryKeyName = TransactionType.expense.name;
  static String incomeCategoryKeyName = TransactionType.income.name;

  GetStorage storage = GetStorage(AppString.categoryStore);

  void _initExpenseCategory() {
    List<dynamic>? categories =
        storage.read<List<dynamic>>(expenseCategoryKeyName);
    if (categories == null) {
      List<String> category = [
        '🫕 Food',
        '🕴️ Social Life',
        '🐶 Pets',
        '🎒 Transport',
        '🎎 Culture',
        '🏠 Household',
        '🕴️ Apparel',
        '💇🏽‍♂️ Beauty',
        '👨‍⚕️ Health',
        '🏫 Education',
        '🎁 Gift',
        '🛸 Other',
      ];
      for (var element in category) {
        addCategory(expenseCategoryKeyName, element);
      }
    }
  }

  void _initIncomeCategory() {
    List<dynamic>? categories =
        storage.read<List<dynamic>>(incomeCategoryKeyName);
    if (categories == null) {
      List<String> category = [
        '🤑 Allowance',
        '💰 Salary',
        '💵 Petty cash',
        '🎖️ Bounce',
        '🛸 Other',
      ];
      for (var element in category) {
        addCategory(incomeCategoryKeyName, element);
      }
    }
  }

  void initCategory() {
    _initExpenseCategory();
    _initIncomeCategory();
  }

  List<dynamic> getCategory(String key) {
    return storage.read<List<dynamic>>(key) ?? [];
  }

  void addCategory(String key, String value, {int? index}) {
    List<dynamic> categories = getCategory(key);
    if (index != null) {
      categories.insert(index, value);
    } else {
      categories.add(value);
    }
    storage.write(key, categories);
  }

  void removeCategory(String key, String value) {
    List<dynamic> categories = getCategory(key);
    categories.remove(value);
    storage.write(key, categories);
  }
}
