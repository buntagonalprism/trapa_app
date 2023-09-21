// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ongoing_expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OngoingExpense _$$_OngoingExpenseFromJson(Map<String, dynamic> json) =>
    _$_OngoingExpense(
      name: json['name'] as String,
      expense: $enumDecode(_$ExpenseTypeEnumMap, json['expense']),
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      paid: json['paid'] as bool?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      paidDate: json['paidDate'] == null
          ? null
          : DateTime.parse(json['paidDate'] as String),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_OngoingExpenseToJson(_$_OngoingExpense instance) =>
    <String, dynamic>{
      'name': instance.name,
      'expense': _$ExpenseTypeEnumMap[instance.expense]!,
      'amount': instance.amount,
      'currency': instance.currency,
      'paid': instance.paid,
      'dueDate': instance.dueDate?.toIso8601String(),
      'paidDate': instance.paidDate?.toIso8601String(),
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };

const _$ExpenseTypeEnumMap = {
  ExpenseType.accommodation: 'accommodation',
  ExpenseType.food: 'food',
  ExpenseType.drink: 'drink',
  ExpenseType.transport: 'transport',
  ExpenseType.activity: 'activity',
  ExpenseType.necessities: 'necessities',
  ExpenseType.other: 'other',
};
