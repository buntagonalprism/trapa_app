// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripUser _$$_TripUserFromJson(Map<String, dynamic> json) => _$_TripUser(
      userId: json['userId'] as String,
      userDisplayName: json['userDisplayName'] as String,
      userRole: $enumDecode(_$TripUserRoleEnumMap, json['userRole']),
    );

Map<String, dynamic> _$$_TripUserToJson(_$_TripUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userDisplayName': instance.userDisplayName,
      'userRole': _$TripUserRoleEnumMap[instance.userRole]!,
    };

const _$TripUserRoleEnumMap = {
  TripUserRole.owner: 'owner',
  TripUserRole.editor: 'editor',
};
