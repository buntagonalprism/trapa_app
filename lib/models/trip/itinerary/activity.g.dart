// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Activity _$$_ActivityFromJson(Map<String, dynamic> json) => _$_Activity(
      attraction:
          Attraction.fromJson(json['attraction'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      isAllDay: json['isAllDay'] as bool?,
      confirmed: json['confirmed'] as bool?,
      paid: json['paid'] as bool?,
    );

Map<String, dynamic> _$$_ActivityToJson(_$_Activity instance) =>
    <String, dynamic>{
      'attraction': instance.attraction,
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'isAllDay': instance.isAllDay,
      'confirmed': instance.confirmed,
      'paid': instance.paid,
    };
