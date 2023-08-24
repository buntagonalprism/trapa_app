// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripUser _$TripUserFromJson(Map<String, dynamic> json) {
  return _TripUser.fromJson(json);
}

/// @nodoc
mixin _$TripUser {
  String get userId => throw _privateConstructorUsedError;
  String get userDisplayName => throw _privateConstructorUsedError;
  TripUserRole get userRole => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripUserCopyWith<TripUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripUserCopyWith<$Res> {
  factory $TripUserCopyWith(TripUser value, $Res Function(TripUser) then) =
      _$TripUserCopyWithImpl<$Res, TripUser>;
  @useResult
  $Res call({String userId, String userDisplayName, TripUserRole userRole});
}

/// @nodoc
class _$TripUserCopyWithImpl<$Res, $Val extends TripUser>
    implements $TripUserCopyWith<$Res> {
  _$TripUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userDisplayName = null,
    Object? userRole = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userDisplayName: null == userDisplayName
          ? _value.userDisplayName
          : userDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as TripUserRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripUserCopyWith<$Res> implements $TripUserCopyWith<$Res> {
  factory _$$_TripUserCopyWith(
          _$_TripUser value, $Res Function(_$_TripUser) then) =
      __$$_TripUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String userDisplayName, TripUserRole userRole});
}

/// @nodoc
class __$$_TripUserCopyWithImpl<$Res>
    extends _$TripUserCopyWithImpl<$Res, _$_TripUser>
    implements _$$_TripUserCopyWith<$Res> {
  __$$_TripUserCopyWithImpl(
      _$_TripUser _value, $Res Function(_$_TripUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userDisplayName = null,
    Object? userRole = null,
  }) {
    return _then(_$_TripUser(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userDisplayName: null == userDisplayName
          ? _value.userDisplayName
          : userDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as TripUserRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripUser extends _TripUser {
  const _$_TripUser(
      {required this.userId,
      required this.userDisplayName,
      required this.userRole})
      : super._();

  factory _$_TripUser.fromJson(Map<String, dynamic> json) =>
      _$$_TripUserFromJson(json);

  @override
  final String userId;
  @override
  final String userDisplayName;
  @override
  final TripUserRole userRole;

  @override
  String toString() {
    return 'TripUser(userId: $userId, userDisplayName: $userDisplayName, userRole: $userRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userDisplayName, userDisplayName) ||
                other.userDisplayName == userDisplayName) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userDisplayName, userRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripUserCopyWith<_$_TripUser> get copyWith =>
      __$$_TripUserCopyWithImpl<_$_TripUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripUserToJson(
      this,
    );
  }
}

abstract class _TripUser extends TripUser {
  const factory _TripUser(
      {required final String userId,
      required final String userDisplayName,
      required final TripUserRole userRole}) = _$_TripUser;
  const _TripUser._() : super._();

  factory _TripUser.fromJson(Map<String, dynamic> json) = _$_TripUser.fromJson;

  @override
  String get userId;
  @override
  String get userDisplayName;
  @override
  TripUserRole get userRole;
  @override
  @JsonKey(ignore: true)
  _$$_TripUserCopyWith<_$_TripUser> get copyWith =>
      throw _privateConstructorUsedError;
}
