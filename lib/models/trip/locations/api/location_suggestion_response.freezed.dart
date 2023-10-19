// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_suggestion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationSuggestionResponse _$LocationSuggestionResponseFromJson(
    Map<String, dynamic> json) {
  return _LocationSuggestionResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationSuggestionResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationSuggestionResponseCopyWith<LocationSuggestionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSuggestionResponseCopyWith<$Res> {
  factory $LocationSuggestionResponseCopyWith(LocationSuggestionResponse value,
          $Res Function(LocationSuggestionResponse) then) =
      _$LocationSuggestionResponseCopyWithImpl<$Res,
          LocationSuggestionResponse>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$LocationSuggestionResponseCopyWithImpl<$Res,
        $Val extends LocationSuggestionResponse>
    implements $LocationSuggestionResponseCopyWith<$Res> {
  _$LocationSuggestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationSuggestionResponseCopyWith<$Res>
    implements $LocationSuggestionResponseCopyWith<$Res> {
  factory _$$_LocationSuggestionResponseCopyWith(
          _$_LocationSuggestionResponse value,
          $Res Function(_$_LocationSuggestionResponse) then) =
      __$$_LocationSuggestionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_LocationSuggestionResponseCopyWithImpl<$Res>
    extends _$LocationSuggestionResponseCopyWithImpl<$Res,
        _$_LocationSuggestionResponse>
    implements _$$_LocationSuggestionResponseCopyWith<$Res> {
  __$$_LocationSuggestionResponseCopyWithImpl(
      _$_LocationSuggestionResponse _value,
      $Res Function(_$_LocationSuggestionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_LocationSuggestionResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationSuggestionResponse extends _LocationSuggestionResponse {
  const _$_LocationSuggestionResponse({required this.id, required this.name})
      : super._();

  factory _$_LocationSuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationSuggestionResponseFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'LocationSuggestionResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationSuggestionResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationSuggestionResponseCopyWith<_$_LocationSuggestionResponse>
      get copyWith => __$$_LocationSuggestionResponseCopyWithImpl<
          _$_LocationSuggestionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationSuggestionResponseToJson(
      this,
    );
  }
}

abstract class _LocationSuggestionResponse extends LocationSuggestionResponse {
  const factory _LocationSuggestionResponse(
      {required final String id,
      required final String name}) = _$_LocationSuggestionResponse;
  const _LocationSuggestionResponse._() : super._();

  factory _LocationSuggestionResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationSuggestionResponse.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LocationSuggestionResponseCopyWith<_$_LocationSuggestionResponse>
      get copyWith => throw _privateConstructorUsedError;
}
