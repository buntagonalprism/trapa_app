// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeeklySchedule _$$_WeeklyScheduleFromJson(Map<String, dynamic> json) =>
    _$_WeeklySchedule(
      (json['days'] as List<dynamic>)
          .map((e) => $enumDecode(_$DayOfWeekEnumMap, e))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_WeeklyScheduleToJson(_$_WeeklySchedule instance) =>
    <String, dynamic>{
      'days': instance.days.map((e) => _$DayOfWeekEnumMap[e]!).toList(),
      'runtimeType': instance.$type,
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.monday: 'monday',
  DayOfWeek.tuesday: 'tuesday',
  DayOfWeek.wednesday: 'wednesday',
  DayOfWeek.thursday: 'thursday',
  DayOfWeek.friday: 'friday',
  DayOfWeek.saturday: 'saturday',
  DayOfWeek.sunday: 'sunday',
};

_$_MonthlySchedule _$$_MonthlyScheduleFromJson(Map<String, dynamic> json) =>
    _$_MonthlySchedule(
      (json['days'] as List<dynamic>).map((e) => e as int).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MonthlyScheduleToJson(_$_MonthlySchedule instance) =>
    <String, dynamic>{
      'days': instance.days,
      'runtimeType': instance.$type,
    };

_$_OccurrenceInMonthSchedule _$$_OccurrenceInMonthScheduleFromJson(
        Map<String, dynamic> json) =>
    _$_OccurrenceInMonthSchedule(
      (json['days'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), $enumDecode(_$DayOfWeekEnumMap, e)),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_OccurrenceInMonthScheduleToJson(
        _$_OccurrenceInMonthSchedule instance) =>
    <String, dynamic>{
      'days': instance.days
          .map((k, e) => MapEntry(k.toString(), _$DayOfWeekEnumMap[e]!)),
      'runtimeType': instance.$type,
    };
