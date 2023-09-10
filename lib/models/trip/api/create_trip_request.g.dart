// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_trip_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTripRequest _$$_CreateTripRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateTripRequest(
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      singleCountry: json['singleCountry'] as bool,
    );

Map<String, dynamic> _$$_CreateTripRequestToJson(
        _$_CreateTripRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'singleCountry': instance.singleCountry,
    };
