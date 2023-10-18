// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Region _$$_RegionFromJson(Map<String, dynamic> json) => _$_Region(
      name: json['name'] as String,
      parentRegion:
          Region.fromJson(json['parentRegion'] as Map<String, dynamic>),
      countryCode: json['countryCode'] as String,
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegionToJson(_$_Region instance) => <String, dynamic>{
      'name': instance.name,
      'parentRegion': instance.parentRegion,
      'countryCode': instance.countryCode,
      'details': instance.details,
    };
