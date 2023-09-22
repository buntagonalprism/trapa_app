// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trip _$$_TripFromJson(Map<String, dynamic> json) => _$_Trip(
      id: json['id'] as String,
      name: json['name'] as String,
      startDate: const DateConverter().fromJson(json['startDate'] as String),
      endDate: const DateConverter().fromJson(json['endDate'] as String),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TripToJson(_$_Trip instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': const DateConverter().toJson(instance.startDate),
      'endDate': const DateConverter().toJson(instance.endDate),
      'countries': instance.countries,
    };
