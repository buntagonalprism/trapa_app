import 'package:freezed_annotation/freezed_annotation.dart';

import 'trip_user_role.dart';

part 'trip_user.freezed.dart';
part 'trip_user.g.dart';

@freezed
class TripUser with _$TripUser {
  const TripUser._();

  const factory TripUser({
    required String userId,
    required String userDisplayName,
    required TripUserRole userRole,
  }) = _TripUser;

  factory TripUser.fromJson(Map<String, dynamic> json) => _$TripUserFromJson(json);
}
