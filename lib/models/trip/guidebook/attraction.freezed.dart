// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attraction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attraction _$AttractionFromJson(Map<String, dynamic> json) {
  return _Attraction.fromJson(json);
}

/// @nodoc
mixin _$Attraction {
  String get name => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  Details? get details => throw _privateConstructorUsedError;
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  PriceRating? get priceRating => throw _privateConstructorUsedError;
  InterestRating? get interestRating => throw _privateConstructorUsedError;
  AttractionType? get type => throw _privateConstructorUsedError;
  DateRange? get openDateRange => throw _privateConstructorUsedError;
  OpenDaysSchedule? get openDays => throw _privateConstructorUsedError;
  Map<DayOfWeek, List<TimeRange>>? get openingHours =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttractionCopyWith<Attraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttractionCopyWith<$Res> {
  factory $AttractionCopyWith(
          Attraction value, $Res Function(Attraction) then) =
      _$AttractionCopyWithImpl<$Res, Attraction>;
  @useResult
  $Res call(
      {String name,
      Region region,
      Details? details,
      Coordinates? coordinates,
      PriceRating? priceRating,
      InterestRating? interestRating,
      AttractionType? type,
      DateRange? openDateRange,
      OpenDaysSchedule? openDays,
      Map<DayOfWeek, List<TimeRange>>? openingHours});

  $RegionCopyWith<$Res> get region;
  $DetailsCopyWith<$Res>? get details;
  $CoordinatesCopyWith<$Res>? get coordinates;
  $DateRangeCopyWith<$Res>? get openDateRange;
  $OpenDaysScheduleCopyWith<$Res>? get openDays;
}

/// @nodoc
class _$AttractionCopyWithImpl<$Res, $Val extends Attraction>
    implements $AttractionCopyWith<$Res> {
  _$AttractionCopyWithImpl(this._value, this._then);

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
    Object? coordinates = freezed,
    Object? priceRating = freezed,
    Object? interestRating = freezed,
    Object? type = freezed,
    Object? openDateRange = freezed,
    Object? openDays = freezed,
    Object? openingHours = freezed,
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
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      priceRating: freezed == priceRating
          ? _value.priceRating
          : priceRating // ignore: cast_nullable_to_non_nullable
              as PriceRating?,
      interestRating: freezed == interestRating
          ? _value.interestRating
          : interestRating // ignore: cast_nullable_to_non_nullable
              as InterestRating?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttractionType?,
      openDateRange: freezed == openDateRange
          ? _value.openDateRange
          : openDateRange // ignore: cast_nullable_to_non_nullable
              as DateRange?,
      openDays: freezed == openDays
          ? _value.openDays
          : openDays // ignore: cast_nullable_to_non_nullable
              as OpenDaysSchedule?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as Map<DayOfWeek, List<TimeRange>>?,
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
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DateRangeCopyWith<$Res>? get openDateRange {
    if (_value.openDateRange == null) {
      return null;
    }

    return $DateRangeCopyWith<$Res>(_value.openDateRange!, (value) {
      return _then(_value.copyWith(openDateRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenDaysScheduleCopyWith<$Res>? get openDays {
    if (_value.openDays == null) {
      return null;
    }

    return $OpenDaysScheduleCopyWith<$Res>(_value.openDays!, (value) {
      return _then(_value.copyWith(openDays: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AttractionCopyWith<$Res>
    implements $AttractionCopyWith<$Res> {
  factory _$$_AttractionCopyWith(
          _$_Attraction value, $Res Function(_$_Attraction) then) =
      __$$_AttractionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Region region,
      Details? details,
      Coordinates? coordinates,
      PriceRating? priceRating,
      InterestRating? interestRating,
      AttractionType? type,
      DateRange? openDateRange,
      OpenDaysSchedule? openDays,
      Map<DayOfWeek, List<TimeRange>>? openingHours});

  @override
  $RegionCopyWith<$Res> get region;
  @override
  $DetailsCopyWith<$Res>? get details;
  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
  @override
  $DateRangeCopyWith<$Res>? get openDateRange;
  @override
  $OpenDaysScheduleCopyWith<$Res>? get openDays;
}

/// @nodoc
class __$$_AttractionCopyWithImpl<$Res>
    extends _$AttractionCopyWithImpl<$Res, _$_Attraction>
    implements _$$_AttractionCopyWith<$Res> {
  __$$_AttractionCopyWithImpl(
      _$_Attraction _value, $Res Function(_$_Attraction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? details = freezed,
    Object? coordinates = freezed,
    Object? priceRating = freezed,
    Object? interestRating = freezed,
    Object? type = freezed,
    Object? openDateRange = freezed,
    Object? openDays = freezed,
    Object? openingHours = freezed,
  }) {
    return _then(_$_Attraction(
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
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      priceRating: freezed == priceRating
          ? _value.priceRating
          : priceRating // ignore: cast_nullable_to_non_nullable
              as PriceRating?,
      interestRating: freezed == interestRating
          ? _value.interestRating
          : interestRating // ignore: cast_nullable_to_non_nullable
              as InterestRating?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttractionType?,
      openDateRange: freezed == openDateRange
          ? _value.openDateRange
          : openDateRange // ignore: cast_nullable_to_non_nullable
              as DateRange?,
      openDays: freezed == openDays
          ? _value.openDays
          : openDays // ignore: cast_nullable_to_non_nullable
              as OpenDaysSchedule?,
      openingHours: freezed == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as Map<DayOfWeek, List<TimeRange>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attraction extends _Attraction {
  const _$_Attraction(
      {required this.name,
      required this.region,
      this.details,
      this.coordinates,
      this.priceRating,
      this.interestRating,
      this.type,
      this.openDateRange,
      this.openDays,
      final Map<DayOfWeek, List<TimeRange>>? openingHours})
      : _openingHours = openingHours,
        super._();

  factory _$_Attraction.fromJson(Map<String, dynamic> json) =>
      _$$_AttractionFromJson(json);

  @override
  final String name;
  @override
  final Region region;
  @override
  final Details? details;
  @override
  final Coordinates? coordinates;
  @override
  final PriceRating? priceRating;
  @override
  final InterestRating? interestRating;
  @override
  final AttractionType? type;
  @override
  final DateRange? openDateRange;
  @override
  final OpenDaysSchedule? openDays;
  final Map<DayOfWeek, List<TimeRange>>? _openingHours;
  @override
  Map<DayOfWeek, List<TimeRange>>? get openingHours {
    final value = _openingHours;
    if (value == null) return null;
    if (_openingHours is EqualUnmodifiableMapView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Attraction(name: $name, region: $region, details: $details, coordinates: $coordinates, priceRating: $priceRating, interestRating: $interestRating, type: $type, openDateRange: $openDateRange, openDays: $openDays, openingHours: $openingHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attraction &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.priceRating, priceRating) ||
                other.priceRating == priceRating) &&
            (identical(other.interestRating, interestRating) ||
                other.interestRating == interestRating) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.openDateRange, openDateRange) ||
                other.openDateRange == openDateRange) &&
            (identical(other.openDays, openDays) ||
                other.openDays == openDays) &&
            const DeepCollectionEquality()
                .equals(other._openingHours, _openingHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      region,
      details,
      coordinates,
      priceRating,
      interestRating,
      type,
      openDateRange,
      openDays,
      const DeepCollectionEquality().hash(_openingHours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttractionCopyWith<_$_Attraction> get copyWith =>
      __$$_AttractionCopyWithImpl<_$_Attraction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttractionToJson(
      this,
    );
  }
}

abstract class _Attraction extends Attraction {
  const factory _Attraction(
      {required final String name,
      required final Region region,
      final Details? details,
      final Coordinates? coordinates,
      final PriceRating? priceRating,
      final InterestRating? interestRating,
      final AttractionType? type,
      final DateRange? openDateRange,
      final OpenDaysSchedule? openDays,
      final Map<DayOfWeek, List<TimeRange>>? openingHours}) = _$_Attraction;
  const _Attraction._() : super._();

  factory _Attraction.fromJson(Map<String, dynamic> json) =
      _$_Attraction.fromJson;

  @override
  String get name;
  @override
  Region get region;
  @override
  Details? get details;
  @override
  Coordinates? get coordinates;
  @override
  PriceRating? get priceRating;
  @override
  InterestRating? get interestRating;
  @override
  AttractionType? get type;
  @override
  DateRange? get openDateRange;
  @override
  OpenDaysSchedule? get openDays;
  @override
  Map<DayOfWeek, List<TimeRange>>? get openingHours;
  @override
  @JsonKey(ignore: true)
  _$$_AttractionCopyWith<_$_Attraction> get copyWith =>
      throw _privateConstructorUsedError;
}
