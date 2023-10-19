// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDetailsResponse _$LocationDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _LocationDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationDetailsResponse {
  LocationSuggestionResponse get place => throw _privateConstructorUsedError;
  CoordinatesResposne get coordinates => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDetailsResponseCopyWith<LocationDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailsResponseCopyWith<$Res> {
  factory $LocationDetailsResponseCopyWith(LocationDetailsResponse value,
          $Res Function(LocationDetailsResponse) then) =
      _$LocationDetailsResponseCopyWithImpl<$Res, LocationDetailsResponse>;
  @useResult
  $Res call(
      {LocationSuggestionResponse place,
      CoordinatesResposne coordinates,
      String website});

  $LocationSuggestionResponseCopyWith<$Res> get place;
  $CoordinatesResposneCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$LocationDetailsResponseCopyWithImpl<$Res,
        $Val extends LocationDetailsResponse>
    implements $LocationDetailsResponseCopyWith<$Res> {
  _$LocationDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? coordinates = null,
    Object? website = null,
  }) {
    return _then(_value.copyWith(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as LocationSuggestionResponse,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesResposne,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationSuggestionResponseCopyWith<$Res> get place {
    return $LocationSuggestionResponseCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesResposneCopyWith<$Res> get coordinates {
    return $CoordinatesResposneCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocationDetailsResponseCopyWith<$Res>
    implements $LocationDetailsResponseCopyWith<$Res> {
  factory _$$_LocationDetailsResponseCopyWith(_$_LocationDetailsResponse value,
          $Res Function(_$_LocationDetailsResponse) then) =
      __$$_LocationDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationSuggestionResponse place,
      CoordinatesResposne coordinates,
      String website});

  @override
  $LocationSuggestionResponseCopyWith<$Res> get place;
  @override
  $CoordinatesResposneCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$_LocationDetailsResponseCopyWithImpl<$Res>
    extends _$LocationDetailsResponseCopyWithImpl<$Res,
        _$_LocationDetailsResponse>
    implements _$$_LocationDetailsResponseCopyWith<$Res> {
  __$$_LocationDetailsResponseCopyWithImpl(_$_LocationDetailsResponse _value,
      $Res Function(_$_LocationDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? coordinates = null,
    Object? website = null,
  }) {
    return _then(_$_LocationDetailsResponse(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as LocationSuggestionResponse,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesResposne,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDetailsResponse extends _LocationDetailsResponse {
  const _$_LocationDetailsResponse(
      {required this.place, required this.coordinates, required this.website})
      : super._();

  factory _$_LocationDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDetailsResponseFromJson(json);

  @override
  final LocationSuggestionResponse place;
  @override
  final CoordinatesResposne coordinates;
  @override
  final String website;

  @override
  String toString() {
    return 'LocationDetailsResponse(place: $place, coordinates: $coordinates, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDetailsResponse &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, place, coordinates, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationDetailsResponseCopyWith<_$_LocationDetailsResponse>
      get copyWith =>
          __$$_LocationDetailsResponseCopyWithImpl<_$_LocationDetailsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDetailsResponseToJson(
      this,
    );
  }
}

abstract class _LocationDetailsResponse extends LocationDetailsResponse {
  const factory _LocationDetailsResponse(
      {required final LocationSuggestionResponse place,
      required final CoordinatesResposne coordinates,
      required final String website}) = _$_LocationDetailsResponse;
  const _LocationDetailsResponse._() : super._();

  factory _LocationDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationDetailsResponse.fromJson;

  @override
  LocationSuggestionResponse get place;
  @override
  CoordinatesResposne get coordinates;
  @override
  String get website;
  @override
  @JsonKey(ignore: true)
  _$$_LocationDetailsResponseCopyWith<_$_LocationDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

CoordinatesResposne _$CoordinatesResposneFromJson(Map<String, dynamic> json) {
  return _CoordinatesResposne.fromJson(json);
}

/// @nodoc
mixin _$CoordinatesResposne {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinatesResposneCopyWith<CoordinatesResposne> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesResposneCopyWith<$Res> {
  factory $CoordinatesResposneCopyWith(
          CoordinatesResposne value, $Res Function(CoordinatesResposne) then) =
      _$CoordinatesResposneCopyWithImpl<$Res, CoordinatesResposne>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CoordinatesResposneCopyWithImpl<$Res, $Val extends CoordinatesResposne>
    implements $CoordinatesResposneCopyWith<$Res> {
  _$CoordinatesResposneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoordinatesResposneCopyWith<$Res>
    implements $CoordinatesResposneCopyWith<$Res> {
  factory _$$_CoordinatesResposneCopyWith(_$_CoordinatesResposne value,
          $Res Function(_$_CoordinatesResposne) then) =
      __$$_CoordinatesResposneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_CoordinatesResposneCopyWithImpl<$Res>
    extends _$CoordinatesResposneCopyWithImpl<$Res, _$_CoordinatesResposne>
    implements _$$_CoordinatesResposneCopyWith<$Res> {
  __$$_CoordinatesResposneCopyWithImpl(_$_CoordinatesResposne _value,
      $Res Function(_$_CoordinatesResposne) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_CoordinatesResposne(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoordinatesResposne extends _CoordinatesResposne {
  const _$_CoordinatesResposne(
      {required this.latitude, required this.longitude})
      : super._();

  factory _$_CoordinatesResposne.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinatesResposneFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'CoordinatesResposne(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoordinatesResposne &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoordinatesResposneCopyWith<_$_CoordinatesResposne> get copyWith =>
      __$$_CoordinatesResposneCopyWithImpl<_$_CoordinatesResposne>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinatesResposneToJson(
      this,
    );
  }
}

abstract class _CoordinatesResposne extends CoordinatesResposne {
  const factory _CoordinatesResposne(
      {required final double latitude,
      required final double longitude}) = _$_CoordinatesResposne;
  const _CoordinatesResposne._() : super._();

  factory _CoordinatesResposne.fromJson(Map<String, dynamic> json) =
      _$_CoordinatesResposne.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_CoordinatesResposneCopyWith<_$_CoordinatesResposne> get copyWith =>
      throw _privateConstructorUsedError;
}
