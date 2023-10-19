// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return _Destination.fromJson(json);
}

/// @nodoc
mixin _$Destination {
  Location get region => throw _privateConstructorUsedError;
  DateTime get arrivalDate => throw _privateConstructorUsedError;
  DateTime get departureDate => throw _privateConstructorUsedError;
  List<Reservation> get reservations => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  List<DayTrip> get dayTrips => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationCopyWith<Destination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res, Destination>;
  @useResult
  $Res call(
      {Location region,
      DateTime arrivalDate,
      DateTime departureDate,
      List<Reservation> reservations,
      List<Activity> activities,
      List<DayTrip> dayTrips});

  $LocationCopyWith<$Res> get region;
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res, $Val extends Destination>
    implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? arrivalDate = null,
    Object? departureDate = null,
    Object? reservations = null,
    Object? activities = null,
    Object? dayTrips = null,
  }) {
    return _then(_value.copyWith(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Location,
      arrivalDate: null == arrivalDate
          ? _value.arrivalDate
          : arrivalDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reservations: null == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      dayTrips: null == dayTrips
          ? _value.dayTrips
          : dayTrips // ignore: cast_nullable_to_non_nullable
              as List<DayTrip>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get region {
    return $LocationCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DestinationCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$$_DestinationCopyWith(
          _$_Destination value, $Res Function(_$_Destination) then) =
      __$$_DestinationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Location region,
      DateTime arrivalDate,
      DateTime departureDate,
      List<Reservation> reservations,
      List<Activity> activities,
      List<DayTrip> dayTrips});

  @override
  $LocationCopyWith<$Res> get region;
}

/// @nodoc
class __$$_DestinationCopyWithImpl<$Res>
    extends _$DestinationCopyWithImpl<$Res, _$_Destination>
    implements _$$_DestinationCopyWith<$Res> {
  __$$_DestinationCopyWithImpl(
      _$_Destination _value, $Res Function(_$_Destination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? arrivalDate = null,
    Object? departureDate = null,
    Object? reservations = null,
    Object? activities = null,
    Object? dayTrips = null,
  }) {
    return _then(_$_Destination(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Location,
      arrivalDate: null == arrivalDate
          ? _value.arrivalDate
          : arrivalDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reservations: null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      dayTrips: null == dayTrips
          ? _value._dayTrips
          : dayTrips // ignore: cast_nullable_to_non_nullable
              as List<DayTrip>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Destination extends _Destination {
  const _$_Destination(
      {required this.region,
      required this.arrivalDate,
      required this.departureDate,
      required final List<Reservation> reservations,
      required final List<Activity> activities,
      required final List<DayTrip> dayTrips})
      : _reservations = reservations,
        _activities = activities,
        _dayTrips = dayTrips,
        super._();

  factory _$_Destination.fromJson(Map<String, dynamic> json) =>
      _$$_DestinationFromJson(json);

  @override
  final Location region;
  @override
  final DateTime arrivalDate;
  @override
  final DateTime departureDate;
  final List<Reservation> _reservations;
  @override
  List<Reservation> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  final List<DayTrip> _dayTrips;
  @override
  List<DayTrip> get dayTrips {
    if (_dayTrips is EqualUnmodifiableListView) return _dayTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayTrips);
  }

  @override
  String toString() {
    return 'Destination(region: $region, arrivalDate: $arrivalDate, departureDate: $departureDate, reservations: $reservations, activities: $activities, dayTrips: $dayTrips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Destination &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.arrivalDate, arrivalDate) ||
                other.arrivalDate == arrivalDate) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      region,
      arrivalDate,
      departureDate,
      const DeepCollectionEquality().hash(_reservations),
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DestinationCopyWith<_$_Destination> get copyWith =>
      __$$_DestinationCopyWithImpl<_$_Destination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DestinationToJson(
      this,
    );
  }
}

abstract class _Destination extends Destination {
  const factory _Destination(
      {required final Location region,
      required final DateTime arrivalDate,
      required final DateTime departureDate,
      required final List<Reservation> reservations,
      required final List<Activity> activities,
      required final List<DayTrip> dayTrips}) = _$_Destination;
  const _Destination._() : super._();

  factory _Destination.fromJson(Map<String, dynamic> json) =
      _$_Destination.fromJson;

  @override
  Location get region;
  @override
  DateTime get arrivalDate;
  @override
  DateTime get departureDate;
  @override
  List<Reservation> get reservations;
  @override
  List<Activity> get activities;
  @override
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$_DestinationCopyWith<_$_Destination> get copyWith =>
      throw _privateConstructorUsedError;
}
