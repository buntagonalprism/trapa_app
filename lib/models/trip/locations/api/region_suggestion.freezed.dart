// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegionSuggestion _$RegionSuggestionFromJson(Map<String, dynamic> json) {
  return _RegionSuggestion.fromJson(json);
}

/// @nodoc
mixin _$RegionSuggestion {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionSuggestionCopyWith<RegionSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionSuggestionCopyWith<$Res> {
  factory $RegionSuggestionCopyWith(
          RegionSuggestion value, $Res Function(RegionSuggestion) then) =
      _$RegionSuggestionCopyWithImpl<$Res, RegionSuggestion>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$RegionSuggestionCopyWithImpl<$Res, $Val extends RegionSuggestion>
    implements $RegionSuggestionCopyWith<$Res> {
  _$RegionSuggestionCopyWithImpl(this._value, this._then);

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
abstract class _$$_RegionSuggestionCopyWith<$Res>
    implements $RegionSuggestionCopyWith<$Res> {
  factory _$$_RegionSuggestionCopyWith(
          _$_RegionSuggestion value, $Res Function(_$_RegionSuggestion) then) =
      __$$_RegionSuggestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_RegionSuggestionCopyWithImpl<$Res>
    extends _$RegionSuggestionCopyWithImpl<$Res, _$_RegionSuggestion>
    implements _$$_RegionSuggestionCopyWith<$Res> {
  __$$_RegionSuggestionCopyWithImpl(
      _$_RegionSuggestion _value, $Res Function(_$_RegionSuggestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_RegionSuggestion(
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
class _$_RegionSuggestion extends _RegionSuggestion {
  const _$_RegionSuggestion({required this.id, required this.name}) : super._();

  factory _$_RegionSuggestion.fromJson(Map<String, dynamic> json) =>
      _$$_RegionSuggestionFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'RegionSuggestion(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegionSuggestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegionSuggestionCopyWith<_$_RegionSuggestion> get copyWith =>
      __$$_RegionSuggestionCopyWithImpl<_$_RegionSuggestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionSuggestionToJson(
      this,
    );
  }
}

abstract class _RegionSuggestion extends RegionSuggestion {
  const factory _RegionSuggestion(
      {required final String id,
      required final String name}) = _$_RegionSuggestion;
  const _RegionSuggestion._() : super._();

  factory _RegionSuggestion.fromJson(Map<String, dynamic> json) =
      _$_RegionSuggestion.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_RegionSuggestionCopyWith<_$_RegionSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}
