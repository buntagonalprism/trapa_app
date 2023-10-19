// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_leg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportLeg _$TransportLegFromJson(Map<String, dynamic> json) {
  return _TransportLeg.fromJson(json);
}

/// @nodoc
mixin _$TransportLeg {
  DateTime get departureTime => throw _privateConstructorUsedError;
  DateTime get arrivalTime => throw _privateConstructorUsedError;
  TransportType get type => throw _privateConstructorUsedError;
  Location get departure => throw _privateConstructorUsedError;
  Location get arrival => throw _privateConstructorUsedError;
  Coordinates? get departureLocation => throw _privateConstructorUsedError;
  Address? get depatureAddress => throw _privateConstructorUsedError;
  Coordinates? get arrivalLocation => throw _privateConstructorUsedError;
  Address? get arrivalAddress => throw _privateConstructorUsedError;
  Expense? get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportLegCopyWith<TransportLeg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportLegCopyWith<$Res> {
  factory $TransportLegCopyWith(
          TransportLeg value, $Res Function(TransportLeg) then) =
      _$TransportLegCopyWithImpl<$Res, TransportLeg>;
  @useResult
  $Res call(
      {DateTime departureTime,
      DateTime arrivalTime,
      TransportType type,
      Location departure,
      Location arrival,
      Coordinates? departureLocation,
      Address? depatureAddress,
      Coordinates? arrivalLocation,
      Address? arrivalAddress,
      Expense? cost});

  $LocationCopyWith<$Res> get departure;
  $LocationCopyWith<$Res> get arrival;
  $CoordinatesCopyWith<$Res>? get departureLocation;
  $AddressCopyWith<$Res>? get depatureAddress;
  $CoordinatesCopyWith<$Res>? get arrivalLocation;
  $AddressCopyWith<$Res>? get arrivalAddress;
  $ExpenseCopyWith<$Res>? get cost;
}

/// @nodoc
class _$TransportLegCopyWithImpl<$Res, $Val extends TransportLeg>
    implements $TransportLegCopyWith<$Res> {
  _$TransportLegCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? arrivalTime = null,
    Object? type = null,
    Object? departure = null,
    Object? arrival = null,
    Object? departureLocation = freezed,
    Object? depatureAddress = freezed,
    Object? arrivalLocation = freezed,
    Object? arrivalAddress = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransportType,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as Location,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as Location,
      departureLocation: freezed == departureLocation
          ? _value.departureLocation
          : departureLocation // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      depatureAddress: freezed == depatureAddress
          ? _value.depatureAddress
          : depatureAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      arrivalLocation: freezed == arrivalLocation
          ? _value.arrivalLocation
          : arrivalLocation // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      arrivalAddress: freezed == arrivalAddress
          ? _value.arrivalAddress
          : arrivalAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Expense?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get departure {
    return $LocationCopyWith<$Res>(_value.departure, (value) {
      return _then(_value.copyWith(departure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get arrival {
    return $LocationCopyWith<$Res>(_value.arrival, (value) {
      return _then(_value.copyWith(arrival: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get departureLocation {
    if (_value.departureLocation == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.departureLocation!, (value) {
      return _then(_value.copyWith(departureLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get depatureAddress {
    if (_value.depatureAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.depatureAddress!, (value) {
      return _then(_value.copyWith(depatureAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get arrivalLocation {
    if (_value.arrivalLocation == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.arrivalLocation!, (value) {
      return _then(_value.copyWith(arrivalLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get arrivalAddress {
    if (_value.arrivalAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.arrivalAddress!, (value) {
      return _then(_value.copyWith(arrivalAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseCopyWith<$Res>? get cost {
    if (_value.cost == null) {
      return null;
    }

    return $ExpenseCopyWith<$Res>(_value.cost!, (value) {
      return _then(_value.copyWith(cost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransportLegCopyWith<$Res>
    implements $TransportLegCopyWith<$Res> {
  factory _$$_TransportLegCopyWith(
          _$_TransportLeg value, $Res Function(_$_TransportLeg) then) =
      __$$_TransportLegCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime departureTime,
      DateTime arrivalTime,
      TransportType type,
      Location departure,
      Location arrival,
      Coordinates? departureLocation,
      Address? depatureAddress,
      Coordinates? arrivalLocation,
      Address? arrivalAddress,
      Expense? cost});

  @override
  $LocationCopyWith<$Res> get departure;
  @override
  $LocationCopyWith<$Res> get arrival;
  @override
  $CoordinatesCopyWith<$Res>? get departureLocation;
  @override
  $AddressCopyWith<$Res>? get depatureAddress;
  @override
  $CoordinatesCopyWith<$Res>? get arrivalLocation;
  @override
  $AddressCopyWith<$Res>? get arrivalAddress;
  @override
  $ExpenseCopyWith<$Res>? get cost;
}

/// @nodoc
class __$$_TransportLegCopyWithImpl<$Res>
    extends _$TransportLegCopyWithImpl<$Res, _$_TransportLeg>
    implements _$$_TransportLegCopyWith<$Res> {
  __$$_TransportLegCopyWithImpl(
      _$_TransportLeg _value, $Res Function(_$_TransportLeg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? arrivalTime = null,
    Object? type = null,
    Object? departure = null,
    Object? arrival = null,
    Object? departureLocation = freezed,
    Object? depatureAddress = freezed,
    Object? arrivalLocation = freezed,
    Object? arrivalAddress = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$_TransportLeg(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransportType,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as Location,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as Location,
      departureLocation: freezed == departureLocation
          ? _value.departureLocation
          : departureLocation // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      depatureAddress: freezed == depatureAddress
          ? _value.depatureAddress
          : depatureAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      arrivalLocation: freezed == arrivalLocation
          ? _value.arrivalLocation
          : arrivalLocation // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      arrivalAddress: freezed == arrivalAddress
          ? _value.arrivalAddress
          : arrivalAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Expense?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportLeg extends _TransportLeg {
  const _$_TransportLeg(
      {required this.departureTime,
      required this.arrivalTime,
      required this.type,
      required this.departure,
      required this.arrival,
      this.departureLocation,
      this.depatureAddress,
      this.arrivalLocation,
      this.arrivalAddress,
      this.cost})
      : super._();

  factory _$_TransportLeg.fromJson(Map<String, dynamic> json) =>
      _$$_TransportLegFromJson(json);

  @override
  final DateTime departureTime;
  @override
  final DateTime arrivalTime;
  @override
  final TransportType type;
  @override
  final Location departure;
  @override
  final Location arrival;
  @override
  final Coordinates? departureLocation;
  @override
  final Address? depatureAddress;
  @override
  final Coordinates? arrivalLocation;
  @override
  final Address? arrivalAddress;
  @override
  final Expense? cost;

  @override
  String toString() {
    return 'TransportLeg(departureTime: $departureTime, arrivalTime: $arrivalTime, type: $type, departure: $departure, arrival: $arrival, departureLocation: $departureLocation, depatureAddress: $depatureAddress, arrivalLocation: $arrivalLocation, arrivalAddress: $arrivalAddress, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransportLeg &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival) &&
            (identical(other.departureLocation, departureLocation) ||
                other.departureLocation == departureLocation) &&
            (identical(other.depatureAddress, depatureAddress) ||
                other.depatureAddress == depatureAddress) &&
            (identical(other.arrivalLocation, arrivalLocation) ||
                other.arrivalLocation == arrivalLocation) &&
            (identical(other.arrivalAddress, arrivalAddress) ||
                other.arrivalAddress == arrivalAddress) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      departureTime,
      arrivalTime,
      type,
      departure,
      arrival,
      departureLocation,
      depatureAddress,
      arrivalLocation,
      arrivalAddress,
      cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransportLegCopyWith<_$_TransportLeg> get copyWith =>
      __$$_TransportLegCopyWithImpl<_$_TransportLeg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportLegToJson(
      this,
    );
  }
}

abstract class _TransportLeg extends TransportLeg {
  const factory _TransportLeg(
      {required final DateTime departureTime,
      required final DateTime arrivalTime,
      required final TransportType type,
      required final Location departure,
      required final Location arrival,
      final Coordinates? departureLocation,
      final Address? depatureAddress,
      final Coordinates? arrivalLocation,
      final Address? arrivalAddress,
      final Expense? cost}) = _$_TransportLeg;
  const _TransportLeg._() : super._();

  factory _TransportLeg.fromJson(Map<String, dynamic> json) =
      _$_TransportLeg.fromJson;

  @override
  DateTime get departureTime;
  @override
  DateTime get arrivalTime;
  @override
  TransportType get type;
  @override
  Location get departure;
  @override
  Location get arrival;
  @override
  Coordinates? get departureLocation;
  @override
  Address? get depatureAddress;
  @override
  Coordinates? get arrivalLocation;
  @override
  Address? get arrivalAddress;
  @override
  Expense? get cost;
  @override
  @JsonKey(ignore: true)
  _$$_TransportLegCopyWith<_$_TransportLeg> get copyWith =>
      throw _privateConstructorUsedError;
}
