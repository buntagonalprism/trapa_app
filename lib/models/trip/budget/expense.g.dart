// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Expense _$$_ExpenseFromJson(Map<String, dynamic> json) => _$_Expense(
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      type: $enumDecode(_$ExpenseTypeEnumMap, json['type']),
      incurred: DateTime.parse(json['incurred'] as String),
    );

Map<String, dynamic> _$$_ExpenseToJson(_$_Expense instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'currency': instance.currency,
      'type': _$ExpenseTypeEnumMap[instance.type]!,
      'incurred': instance.incurred.toIso8601String(),
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
