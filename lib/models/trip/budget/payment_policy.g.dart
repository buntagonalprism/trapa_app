// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentPolicy _$$_PaymentPolicyFromJson(Map<String, dynamic> json) =>
    _$_PaymentPolicy(
      paymentsDue: (json['paymentsDue'] as List<dynamic>)
          .map((e) => PaymentDue.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentType: $enumDecode(_$PaymentTypeEnumMap, json['paymentType']),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$_PaymentPolicyToJson(_$_PaymentPolicy instance) =>
    <String, dynamic>{
      'paymentsDue': instance.paymentsDue,
      'paymentType': _$PaymentTypeEnumMap[instance.paymentType]!,
      'currency': instance.currency,
    };

const _$PaymentTypeEnumMap = {
  PaymentType.cash: 'cash',
  PaymentType.card: 'card',
};

_$_PaymentDue _$$_PaymentDueFromJson(Map<String, dynamic> json) =>
    _$_PaymentDue(
      amount: (json['amount'] as num).toDouble(),
      dueDate: DateTime.parse(json['dueDate'] as String),
    );

Map<String, dynamic> _$$_PaymentDueToJson(_$_PaymentDue instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'dueDate': instance.dueDate.toIso8601String(),
    };
