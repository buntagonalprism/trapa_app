import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_type.dart';

part 'payment_policy.freezed.dart';
part 'payment_policy.g.dart';

@freezed
class PaymentPolicy with _$PaymentPolicy {
  const PaymentPolicy._();

  const factory PaymentPolicy({
    required List<PaymentDue> paymentsDue,
    required PaymentType paymentType,
    required String currency,
  }) = _PaymentPolicy;

  factory PaymentPolicy.fromJson(Map<String, dynamic> json) => _$PaymentPolicyFromJson(json);
}

@freezed
class PaymentDue with _$PaymentDue {
  const PaymentDue._();

  const factory PaymentDue({
    required double amount,
    required DateTime dueDate,
  }) = _PaymentDue;

  factory PaymentDue.fromJson(Map<String, dynamic> json) => _$PaymentDueFromJson(json);
}
