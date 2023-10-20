// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      id: json['id'] as String,
      name: json['name'] as String,
      parentLocation: json['parentLocation'] == null
          ? null
          : Location.fromJson(json['parentLocation'] as Map<String, dynamic>),
      countryCode: json['countryCode'] as String,
      coordinates:
          Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parentLocation': instance.parentLocation,
      'countryCode': instance.countryCode,
      'coordinates': instance.coordinates,
      'details': instance.details,
    };
