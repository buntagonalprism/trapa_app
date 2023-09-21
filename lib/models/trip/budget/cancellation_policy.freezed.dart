// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancellation_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancellationPolicy _$CancellationPolicyFromJson(Map<String, dynamic> json) {
  return _CancellationPolicy.fromJson(json);
}

/// @nodoc
mixin _$CancellationPolicy {
  bool get cancellable => throw _privateConstructorUsedError;
  List<CancellationCutoff> get cutoffs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancellationPolicyCopyWith<CancellationPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancellationPolicyCopyWith<$Res> {
  factory $CancellationPolicyCopyWith(
          CancellationPolicy value, $Res Function(CancellationPolicy) then) =
      _$CancellationPolicyCopyWithImpl<$Res, CancellationPolicy>;
  @useResult
  $Res call({bool cancellable, List<CancellationCutoff> cutoffs});
}

/// @nodoc
class _$CancellationPolicyCopyWithImpl<$Res, $Val extends CancellationPolicy>
    implements $CancellationPolicyCopyWith<$Res> {
  _$CancellationPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancellable = null,
    Object? cutoffs = null,
  }) {
    return _then(_value.copyWith(
      cancellable: null == cancellable
          ? _value.cancellable
          : cancellable // ignore: cast_nullable_to_non_nullable
              as bool,
      cutoffs: null == cutoffs
          ? _value.cutoffs
          : cutoffs // ignore: cast_nullable_to_non_nullable
              as List<CancellationCutoff>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CancellationPolicyCopyWith<$Res>
    implements $CancellationPolicyCopyWith<$Res> {
  factory _$$_CancellationPolicyCopyWith(_$_CancellationPolicy value,
          $Res Function(_$_CancellationPolicy) then) =
      __$$_CancellationPolicyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool cancellable, List<CancellationCutoff> cutoffs});
}

/// @nodoc
class __$$_CancellationPolicyCopyWithImpl<$Res>
    extends _$CancellationPolicyCopyWithImpl<$Res, _$_CancellationPolicy>
    implements _$$_CancellationPolicyCopyWith<$Res> {
  __$$_CancellationPolicyCopyWithImpl(
      _$_CancellationPolicy _value, $Res Function(_$_CancellationPolicy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancellable = null,
    Object? cutoffs = null,
  }) {
    return _then(_$_CancellationPolicy(
      cancellable: null == cancellable
          ? _value.cancellable
          : cancellable // ignore: cast_nullable_to_non_nullable
              as bool,
      cutoffs: null == cutoffs
          ? _value._cutoffs
          : cutoffs // ignore: cast_nullable_to_non_nullable
              as List<CancellationCutoff>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CancellationPolicy extends _CancellationPolicy {
  const _$_CancellationPolicy(
      {required this.cancellable,
      required final List<CancellationCutoff> cutoffs})
      : _cutoffs = cutoffs,
        super._();

  factory _$_CancellationPolicy.fromJson(Map<String, dynamic> json) =>
      _$$_CancellationPolicyFromJson(json);

  @override
  final bool cancellable;
  final List<CancellationCutoff> _cutoffs;
  @override
  List<CancellationCutoff> get cutoffs {
    if (_cutoffs is EqualUnmodifiableListView) return _cutoffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cutoffs);
  }

  @override
  String toString() {
    return 'CancellationPolicy(cancellable: $cancellable, cutoffs: $cutoffs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancellationPolicy &&
            (identical(other.cancellable, cancellable) ||
                other.cancellable == cancellable) &&
            const DeepCollectionEquality().equals(other._cutoffs, _cutoffs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cancellable, const DeepCollectionEquality().hash(_cutoffs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancellationPolicyCopyWith<_$_CancellationPolicy> get copyWith =>
      __$$_CancellationPolicyCopyWithImpl<_$_CancellationPolicy>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancellationPolicyToJson(
      this,
    );
  }
}

abstract class _CancellationPolicy extends CancellationPolicy {
  const factory _CancellationPolicy(
      {required final bool cancellable,
      required final List<CancellationCutoff> cutoffs}) = _$_CancellationPolicy;
  const _CancellationPolicy._() : super._();

  factory _CancellationPolicy.fromJson(Map<String, dynamic> json) =
      _$_CancellationPolicy.fromJson;

  @override
  bool get cancellable;
  @override
  List<CancellationCutoff> get cutoffs;
  @override
  @JsonKey(ignore: true)
  _$$_CancellationPolicyCopyWith<_$_CancellationPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}
