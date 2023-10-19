// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayTrip _$$_DayTripFromJson(Map<String, dynamic> json) => _$_DayTrip(
      baseRegion: Location.fromJson(json['baseRegion'] as Map<String, dynamic>),
      targetRegion:
          Location.fromJson(json['targetRegion'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_DayTripToJson(_$_DayTrip instance) =>
    <String, dynamic>{
      'baseRegion': instance.baseRegion,
      'targetRegion': instance.targetRegion,
      'date': instance.date.toIso8601String(),
    };
