// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeRange _$$_TimeRangeFromJson(Map<String, dynamic> json) => _$_TimeRange(
      open: Time.fromJson(json['open'] as Map<String, dynamic>),
      close: Time.fromJson(json['close'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TimeRangeToJson(_$_TimeRange instance) =>
    <String, dynamic>{
      'open': instance.open,
      'close': instance.close,
    };
