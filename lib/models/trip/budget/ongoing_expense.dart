import 'package:freezed_annotation/freezed_annotation.dart';

import 'expense_type.dart';

part 'ongoing_expense.freezed.dart';
part 'ongoing_expense.g.dart';

@freezed
class OngoingExpense with _$OngoingExpense {
  const OngoingExpense._();

  const factory OngoingExpense({
    required String name, 
    required ExpenseType expense,
    required double amount,
    required String currency,
    bool? paid, 
    DateTime? dueDate,
    DateTime? paidDate, 
    DateTime? startDate,
    DateTime? endDate,
  }) = _OngoingExpense;

  factory OngoingExpense.fromJson(Map<String, dynamic> json) => _$OngoingExpenseFromJson(json);
}
