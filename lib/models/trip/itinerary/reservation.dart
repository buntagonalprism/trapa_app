import 'package:freezed_annotation/freezed_annotation.dart';

import '../budget/cancellation_policy.dart';
import '../budget/ongoing_expense.dart';
import '../budget/payment_policy.dart';
import '../common/contact_details.dart';
import '../guidebook/accommodation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed
class Reservation with _$Reservation {
  const Reservation._();

  const factory Reservation({
    required Accommodation accommodation,
    required DateTime checkIn,
    required DateTime checkOut,
    OngoingExpense? cost, 
    CancellationPolicy? cancellationPolicy,
    PaymentPolicy? paymentPolicy, 
    ContactDetails? contactDetails,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) => _$ReservationFromJson(json);

}
