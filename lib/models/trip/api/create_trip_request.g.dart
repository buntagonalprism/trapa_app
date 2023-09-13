// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_trip_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTripRequest _$$_CreateTripRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateTripRequest(
      name: json['name'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      singleCountryCode: json['singleCountryCode'] as String?,
    );

Map<String, dynamic> _$$_CreateTripRequestToJson(
        _$_CreateTripRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'singleCountryCode': instance.singleCountryCode,
    };
