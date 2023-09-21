// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransportOptions _$$_TransportOptionsFromJson(Map<String, dynamic> json) =>
    _$_TransportOptions(
      departure: Region.fromJson(json['departure'] as Map<String, dynamic>),
      destination: Region.fromJson(json['destination'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => TransportLeg.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$_TransportOptionsToJson(_$_TransportOptions instance) =>
    <String, dynamic>{
      'departure': instance.departure,
      'destination': instance.destination,
      'options': instance.options,
    };
