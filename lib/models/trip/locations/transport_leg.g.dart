// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_leg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransportLeg _$$_TransportLegFromJson(Map<String, dynamic> json) =>
    _$_TransportLeg(
      departureTime: DateTime.parse(json['departureTime'] as String),
      arrivalTime: DateTime.parse(json['arrivalTime'] as String),
      type: $enumDecode(_$TransportTypeEnumMap, json['type']),
      departure: Region.fromJson(json['departure'] as Map<String, dynamic>),
      arrival: Region.fromJson(json['arrival'] as Map<String, dynamic>),
      departureLocation: json['departureLocation'] == null
          ? null
          : Coordinates.fromJson(
              json['departureLocation'] as Map<String, dynamic>),
      depatureAddress: json['depatureAddress'] == null
          ? null
          : Address.fromJson(json['depatureAddress'] as Map<String, dynamic>),
      arrivalLocation: json['arrivalLocation'] == null
          ? null
          : Coordinates.fromJson(
              json['arrivalLocation'] as Map<String, dynamic>),
      arrivalAddress: json['arrivalAddress'] == null
          ? null
          : Address.fromJson(json['arrivalAddress'] as Map<String, dynamic>),
      cost: json['cost'] == null
          ? null
          : Expense.fromJson(json['cost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransportLegToJson(_$_TransportLeg instance) =>
    <String, dynamic>{
      'departureTime': instance.departureTime.toIso8601String(),
      'arrivalTime': instance.arrivalTime.toIso8601String(),
      'type': _$TransportTypeEnumMap[instance.type]!,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'departureLocation': instance.departureLocation,
      'depatureAddress': instance.depatureAddress,
      'arrivalLocation': instance.arrivalLocation,
      'arrivalAddress': instance.arrivalAddress,
      'cost': instance.cost,
    };

const _$TransportTypeEnumMap = {
  TransportType.bus: 'bus',
  TransportType.train: 'train',
  TransportType.tramMetro: 'tramMetro',
  TransportType.plane: 'plane',
  TransportType.car: 'car',
  TransportType.ferry: 'ferry',
  TransportType.taxi: 'taxi',
  TransportType.walk: 'walk',
};
