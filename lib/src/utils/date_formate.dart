import 'package:intl/intl.dart';

extension DateToStingConvert on DateTime {
  String get string {
    return DateFormat.yMEd().add_jms().format(this);
  }
}
