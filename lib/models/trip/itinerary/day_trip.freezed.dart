// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayTrip _$DayTripFromJson(Map<String, dynamic> json) {
  return _DayTrip.fromJson(json);
}

/// @nodoc
mixin _$DayTrip {
  Location get baseLocation => throw _privateConstructorUsedError;
  Location get targetLocation => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayTripCopyWith<DayTrip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTripCopyWith<$Res> {
  factory $DayTripCopyWith(DayTrip value, $Res Function(DayTrip) then) =
      _$DayTripCopyWithImpl<$Res, DayTrip>;
  @useResult
  $Res call({Location baseLocation, Location targetLocation, DateTime date});

  $LocationCopyWith<$Res> get baseLocation;
  $LocationCopyWith<$Res> get targetLocation;
}

/// @nodoc
class _$DayTripCopyWithImpl<$Res, $Val extends DayTrip>
    implements $DayTripCopyWith<$Res> {
  _$DayTripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseLocation = null,
    Object? targetLocation = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      baseLocation: null == baseLocation
          ? _value.baseLocation
          : baseLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      targetLocation: null == targetLocation
          ? _value.targetLocation
          : targetLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get baseLocation {
    return $LocationCopyWith<$Res>(_value.baseLocation, (value) {
      return _then(_value.copyWith(baseLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get targetLocation {
    return $LocationCopyWith<$Res>(_value.targetLocation, (value) {
      return _then(_value.copyWith(targetLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DayTripCopyWith<$Res> implements $DayTripCopyWith<$Res> {
  factory _$$_DayTripCopyWith(
          _$_DayTrip value, $Res Function(_$_DayTrip) then) =
      __$$_DayTripCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location baseLocation, Location targetLocation, DateTime date});

  @override
  $LocationCopyWith<$Res> get baseLocation;
  @override
  $LocationCopyWith<$Res> get targetLocation;
}

/// @nodoc
class __$$_DayTripCopyWithImpl<$Res>
    extends _$DayTripCopyWithImpl<$Res, _$_DayTrip>
    implements _$$_DayTripCopyWith<$Res> {
  __$$_DayTripCopyWithImpl(_$_DayTrip _value, $Res Function(_$_DayTrip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseLocation = null,
    Object? targetLocation = null,
    Object? date = null,
  }) {
    return _then(_$_DayTrip(
      baseLocation: null == baseLocation
          ? _value.baseLocation
          : baseLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      targetLocation: null == targetLocation
          ? _value.targetLocation
          : targetLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayTrip extends _DayTrip {
  const _$_DayTrip(
      {required this.baseLocation,
      required this.targetLocation,
      required this.date})
      : super._();

  factory _$_DayTrip.fromJson(Map<String, dynamic> json) =>
      _$$_DayTripFromJson(json);

  @override
  final Location baseLocation;
  @override
  final Location targetLocation;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'DayTrip(baseLocation: $baseLocation, targetLocation: $targetLocation, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayTrip &&
            (identical(other.baseLocation, baseLocation) ||
                other.baseLocation == baseLocation) &&
            (identical(other.targetLocation, targetLocation) ||
                other.targetLocation == targetLocation) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, baseLocation, targetLocation, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayTripCopyWith<_$_DayTrip> get copyWith =>
      __$$_DayTripCopyWithImpl<_$_DayTrip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayTripToJson(
      this,
    );
  }
}

abstract class _DayTrip extends DayTrip {
  const factory _DayTrip(
      {required final Location baseLocation,
      required final Location targetLocation,
      required final DateTime date}) = _$_DayTrip;
  const _DayTrip._() : super._();

  factory _DayTrip.fromJson(Map<String, dynamic> json) = _$_DayTrip.fromJson;

  @override
  Location get baseLocation;
  @override
  Location get targetLocation;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_DayTripCopyWith<_$_DayTrip> get copyWith =>
      throw _privateConstructorUsedError;
}
