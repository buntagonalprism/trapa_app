// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Accommodation _$AccommodationFromJson(Map<String, dynamic> json) {
  return _Accommodation.fromJson(json);
}

/// @nodoc
mixin _$Accommodation {
  String get name => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  Details? get details => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  PriceRating? get price => throw _privateConstructorUsedError;
  AccommodationType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccommodationCopyWith<Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationCopyWith<$Res> {
  factory $AccommodationCopyWith(
          Accommodation value, $Res Function(Accommodation) then) =
      _$AccommodationCopyWithImpl<$Res, Accommodation>;
  @useResult
  $Res call(
      {String name,
      Region region,
      Details? details,
      Address? address,
      Coordinates? coordinates,
      double? rating,
      PriceRating? price,
      AccommodationType? type});

  $RegionCopyWith<$Res> get region;
  $DetailsCopyWith<$Res>? get details;
  $AddressCopyWith<$Res>? get address;
  $CoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$AccommodationCopyWithImpl<$Res, $Val extends Accommodation>
    implements $AccommodationCopyWith<$Res> {
  _$AccommodationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? details = freezed,
    Object? address = freezed,
    Object? coordinates = freezed,
    Object? rating = freezed,
    Object? price = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceRating?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccommodationType?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccommodationCopyWith<$Res>
    implements $AccommodationCopyWith<$Res> {
  factory _$$_AccommodationCopyWith(
          _$_Accommodation value, $Res Function(_$_Accommodation) then) =
      __$$_AccommodationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Region region,
      Details? details,
      Address? address,
      Coordinates? coordinates,
      double? rating,
      PriceRating? price,
      AccommodationType? type});

  @override
  $RegionCopyWith<$Res> get region;
  @override
  $DetailsCopyWith<$Res>? get details;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$_AccommodationCopyWithImpl<$Res>
    extends _$AccommodationCopyWithImpl<$Res, _$_Accommodation>
    implements _$$_AccommodationCopyWith<$Res> {
  __$$_AccommodationCopyWithImpl(
      _$_Accommodation _value, $Res Function(_$_Accommodation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? details = freezed,
    Object? address = freezed,
    Object? coordinates = freezed,
    Object? rating = freezed,
    Object? price = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Accommodation(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceRating?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccommodationType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Accommodation extends _Accommodation {
  const _$_Accommodation(
      {required this.name,
      required this.region,
      this.details,
      this.address,
      this.coordinates,
      this.rating,
      this.price,
      this.type})
      : super._();

  factory _$_Accommodation.fromJson(Map<String, dynamic> json) =>
      _$$_AccommodationFromJson(json);

  @override
  final String name;
  @override
  final Region region;
  @override
  final Details? details;
  @override
  final Address? address;
  @override
  final Coordinates? coordinates;
  @override
  final double? rating;
  @override
  final PriceRating? price;
  @override
  final AccommodationType? type;

  @override
  String toString() {
    return 'Accommodation(name: $name, region: $region, details: $details, address: $address, coordinates: $coordinates, rating: $rating, price: $price, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Accommodation &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, details, address,
      coordinates, rating, price, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccommodationCopyWith<_$_Accommodation> get copyWith =>
      __$$_AccommodationCopyWithImpl<_$_Accommodation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccommodationToJson(
      this,
    );
  }
}

abstract class _Accommodation extends Accommodation {
  const factory _Accommodation(
      {required final String name,
      required final Region region,
      final Details? details,
      final Address? address,
      final Coordinates? coordinates,
      final double? rating,
      final PriceRating? price,
      final AccommodationType? type}) = _$_Accommodation;
  const _Accommodation._() : super._();

  factory _Accommodation.fromJson(Map<String, dynamic> json) =
      _$_Accommodation.fromJson;

  @override
  String get name;
  @override
  Region get region;
  @override
  Details? get details;
  @override
  Address? get address;
  @override
  Coordinates? get coordinates;
  @override
  double? get rating;
  @override
  PriceRating? get price;
  @override
  AccommodationType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_AccommodationCopyWith<_$_Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}
