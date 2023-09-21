// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reservation _$$_ReservationFromJson(Map<String, dynamic> json) =>
    _$_Reservation(
      accommodation:
          Accommodation.fromJson(json['accommodation'] as Map<String, dynamic>),
      checkIn: DateTime.parse(json['checkIn'] as String),
      checkOut: DateTime.parse(json['checkOut'] as String),
      cost: json['cost'] == null
          ? null
          : OngoingExpense.fromJson(json['cost'] as Map<String, dynamic>),
      cancellationPolicy: json['cancellationPolicy'] == null
          ? null
          : CancellationPolicy.fromJson(
              json['cancellationPolicy'] as Map<String, dynamic>),
      paymentPolicy: json['paymentPolicy'] == null
          ? null
          : PaymentPolicy.fromJson(
              json['paymentPolicy'] as Map<String, dynamic>),
      contactDetails: json['contactDetails'] == null
          ? null
          : ContactDetails.fromJson(
              json['contactDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReservationToJson(_$_Reservation instance) =>
    <String, dynamic>{
      'accommodation': instance.accommodation,
      'checkIn': instance.checkIn.toIso8601String(),
      'checkOut': instance.checkOut.toIso8601String(),
      'cost': instance.cost,
      'cancellationPolicy': instance.cancellationPolicy,
      'paymentPolicy': instance.paymentPolicy,
      'contactDetails': instance.contactDetails,
    };
