import 'package:money_manager/src/model/transaction_model.dart';

class TransferTransactionModel extends TransactionModel {
  final String from;
  final String to;

  const TransferTransactionModel({
    required super.id,
    required super.date,
    required super.amount,
    required this.from,
    required this.to,
    required super.note,
    super.category,
    super.account,
    super.description,
  });

  @override
  TransferTransactionModel copyWith({
    String? id,
    DateTime? date,
    double? amount,
    String? from,
    String? to,
    String? category,
    String? account,
    String? note,
    String? description,
  }) {
    return TransferTransactionModel(
      id: id ?? this.id,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      from: from ?? this.from,
      to: to ?? this.to,
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
        from,
        to,
        note,
        category,
        account,
        description,
      ];
}
