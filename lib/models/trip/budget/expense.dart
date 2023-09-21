import 'package:freezed_annotation/freezed_annotation.dart';

import 'expense_type.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

@freezed
class Expense with _$Expense {
  const Expense._();

  const factory Expense({
    required String name,
    required double amount,
    required String currency,
    required ExpenseType type,
    required DateTime incurred,
  }) = _Expense;

  factory Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);
}
