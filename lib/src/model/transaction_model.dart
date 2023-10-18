import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final String id;
  final DateTime date;
  final double amount;
  final String? category;
  final String? account;
  final String note;
  final String? description;

  const TransactionModel({
    required this.id,
    required this.date,
    required this.amount,
    required this.category,
    required this.account,
    required this.note,
    this.description,
  });

  TransactionModel copyWith({
    String? id,
    DateTime? date,
    double? amount,
    String? category,
    String? account,
    String? note,
    String? description,
  }) {
    return TransactionModel(
      id: id ?? this.id,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      account: account ?? this.account,
      note: note ?? this.note,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props => [
        id,
        date,
        amount,
        category,
        account,
        note,
        description,
      ];
}
