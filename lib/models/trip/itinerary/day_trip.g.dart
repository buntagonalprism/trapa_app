// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayTrip _$$_DayTripFromJson(Map<String, dynamic> json) => _$_DayTrip(
      baseLocation:
          Location.fromJson(json['baseLocation'] as Map<String, dynamic>),
      targetLocation:
          Location.fromJson(json['targetLocation'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_DayTripToJson(_$_DayTrip instance) =>
    <String, dynamic>{
      'baseLocation': instance.baseLocation,
      'targetLocation': instance.targetLocation,
      'date': instance.date.toIso8601String(),
    };
