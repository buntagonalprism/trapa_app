// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Destination _$$_DestinationFromJson(Map<String, dynamic> json) =>
    _$_Destination(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      arrivalDate: DateTime.parse(json['arrivalDate'] as String),
      departureDate: DateTime.parse(json['departureDate'] as String),
      reservations: (json['reservations'] as List<dynamic>)
          .map((e) => Reservation.fromJson(e as Map<String, dynamic>))
          .toList(),
      activities: (json['activities'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      dayTrips: (json['dayTrips'] as List<dynamic>)
          .map((e) => DayTrip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DestinationToJson(_$_Destination instance) =>
    <String, dynamic>{
      'location': instance.location,
      'arrivalDate': instance.arrivalDate.toIso8601String(),
      'departureDate': instance.departureDate.toIso8601String(),
      'reservations': instance.reservations,
      'activities': instance.activities,
      'dayTrips': instance.dayTrips,
    };
