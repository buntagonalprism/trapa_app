import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_due_type.dart';

part 'payment_due.freezed.dart';
part 'payment_due.g.dart';

@freezed
class PaymentDue with _$PaymentDue {
  const PaymentDue._();

  const factory PaymentDue({
    required double amount,
    required String currency,
    required DateTime dueDate,
    required PaymentDueType type,
  }) = _PaymentDue;

  factory PaymentDue.fromJson(Map<String, dynamic> json) => _$PaymentDueFromJson(json);
}
