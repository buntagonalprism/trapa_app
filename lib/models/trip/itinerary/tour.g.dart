// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tour _$$_TourFromJson(Map<String, dynamic> json) => _$_Tour(
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      cost: json['cost'] == null
          ? null
          : OngoingExpense.fromJson(json['cost'] as Map<String, dynamic>),
      regionsVisited: (json['regionsVisited'] as List<dynamic>?)
          ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
          .toList(),
      departureRegion: json['departureRegion'] == null
          ? null
          : Region.fromJson(json['departureRegion'] as Map<String, dynamic>),
      destinationRegion: json['destinationRegion'] == null
          ? null
          : Region.fromJson(json['destinationRegion'] as Map<String, dynamic>),
      departureTime: json['departureTime'] == null
          ? null
          : DateTime.parse(json['departureTime'] as String),
      arrivalTime: json['arrivalTime'] == null
          ? null
          : DateTime.parse(json['arrivalTime'] as String),
    );

Map<String, dynamic> _$$_TourToJson(_$_Tour instance) => <String, dynamic>{
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'cost': instance.cost,
      'regionsVisited': instance.regionsVisited,
      'departureRegion': instance.departureRegion,
      'destinationRegion': instance.destinationRegion,
      'departureTime': instance.departureTime?.toIso8601String(),
      'arrivalTime': instance.arrivalTime?.toIso8601String(),
    };
