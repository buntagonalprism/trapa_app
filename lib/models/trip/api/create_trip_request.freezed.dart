// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_trip_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTripRequest _$CreateTripRequestFromJson(Map<String, dynamic> json) {
  return _CreateTripRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTripRequest {
  String get name => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String? get singleCountryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTripRequestCopyWith<CreateTripRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTripRequestCopyWith<$Res> {
  factory $CreateTripRequestCopyWith(
          CreateTripRequest value, $Res Function(CreateTripRequest) then) =
      _$CreateTripRequestCopyWithImpl<$Res, CreateTripRequest>;
  @useResult
  $Res call(
      {String name,
      String startDate,
      String endDate,
      String? singleCountryCode});
}

/// @nodoc
class _$CreateTripRequestCopyWithImpl<$Res, $Val extends CreateTripRequest>
    implements $CreateTripRequestCopyWith<$Res> {
  _$CreateTripRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? singleCountryCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      singleCountryCode: freezed == singleCountryCode
          ? _value.singleCountryCode
          : singleCountryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTripRequestCopyWith<$Res>
    implements $CreateTripRequestCopyWith<$Res> {
  factory _$$_CreateTripRequestCopyWith(_$_CreateTripRequest value,
          $Res Function(_$_CreateTripRequest) then) =
      __$$_CreateTripRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String startDate,
      String endDate,
      String? singleCountryCode});
}

/// @nodoc
class __$$_CreateTripRequestCopyWithImpl<$Res>
    extends _$CreateTripRequestCopyWithImpl<$Res, _$_CreateTripRequest>
    implements _$$_CreateTripRequestCopyWith<$Res> {
  __$$_CreateTripRequestCopyWithImpl(
      _$_CreateTripRequest _value, $Res Function(_$_CreateTripRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? singleCountryCode = freezed,
  }) {
    return _then(_$_CreateTripRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      singleCountryCode: freezed == singleCountryCode
          ? _value.singleCountryCode
          : singleCountryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateTripRequest extends _CreateTripRequest {
  const _$_CreateTripRequest(
      {required this.name,
      required this.startDate,
      required this.endDate,
      this.singleCountryCode})
      : super._();

  factory _$_CreateTripRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTripRequestFromJson(json);

  @override
  final String name;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String? singleCountryCode;

  @override
  String toString() {
    return 'CreateTripRequest(name: $name, startDate: $startDate, endDate: $endDate, singleCountryCode: $singleCountryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTripRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.singleCountryCode, singleCountryCode) ||
                other.singleCountryCode == singleCountryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, startDate, endDate, singleCountryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTripRequestCopyWith<_$_CreateTripRequest> get copyWith =>
      __$$_CreateTripRequestCopyWithImpl<_$_CreateTripRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTripRequestToJson(
      this,
    );
  }
}

abstract class _CreateTripRequest extends CreateTripRequest {
  const factory _CreateTripRequest(
      {required final String name,
      required final String startDate,
      required final String endDate,
      final String? singleCountryCode}) = _$_CreateTripRequest;
  const _CreateTripRequest._() : super._();

  factory _CreateTripRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateTripRequest.fromJson;

  @override
  String get name;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  String? get singleCountryCode;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTripRequestCopyWith<_$_CreateTripRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
