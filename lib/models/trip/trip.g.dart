// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trip _$$_TripFromJson(Map<String, dynamic> json) => _$_Trip(
      id: json['id'] as String,
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      userRoles: (json['userRoles'] as List<dynamic>)
          .map((e) => $enumDecode(_$TripUserRoleEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_TripToJson(_$_Trip instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'userRoles':
          instance.userRoles.map((e) => _$TripUserRoleEnumMap[e]!).toList(),
    };

const _$TripUserRoleEnumMap = {
  TripUserRole.owner: 'owner',
  TripUserRole.editor: 'editor',
};
