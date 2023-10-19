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
      locationsVisited: (json['locationsVisited'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      depatureLocation: json['depatureLocation'] == null
          ? null
          : Location.fromJson(json['depatureLocation'] as Map<String, dynamic>),
      destinationLocation: json['destinationLocation'] == null
          ? null
          : Location.fromJson(
              json['destinationLocation'] as Map<String, dynamic>),
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
      'locationsVisited': instance.locationsVisited,
      'depatureLocation': instance.depatureLocation,
      'destinationLocation': instance.destinationLocation,
      'departureTime': instance.departureTime?.toIso8601String(),
      'arrivalTime': instance.arrivalTime?.toIso8601String(),
    };
