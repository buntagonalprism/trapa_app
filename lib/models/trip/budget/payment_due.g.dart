// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_due.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDue _$$_PaymentDueFromJson(Map<String, dynamic> json) =>
    _$_PaymentDue(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
      type: $enumDecode(_$PaymentDueTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_PaymentDueToJson(_$_PaymentDue instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'dueDate': instance.dueDate.toIso8601String(),
      'type': _$PaymentDueTypeEnumMap[instance.type]!,
    };

const _$PaymentDueTypeEnumMap = {
  PaymentDueType.deposit: 'deposit',
  PaymentDueType.installment: 'installment',
  PaymentDueType.full: 'full',
};
