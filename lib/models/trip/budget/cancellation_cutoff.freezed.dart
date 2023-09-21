// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancellation_cutoff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancellationCutoff _$CancellationCutoffFromJson(Map<String, dynamic> json) {
  return _CancellationCutoff.fromJson(json);
}

/// @nodoc
mixin _$CancellationCutoff {
  int get daysBefore => throw _privateConstructorUsedError;
  double? get percentageLost => throw _privateConstructorUsedError;
  double? get amountLost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancellationCutoffCopyWith<CancellationCutoff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancellationCutoffCopyWith<$Res> {
  factory $CancellationCutoffCopyWith(
          CancellationCutoff value, $Res Function(CancellationCutoff) then) =
      _$CancellationCutoffCopyWithImpl<$Res, CancellationCutoff>;
  @useResult
  $Res call({int daysBefore, double? percentageLost, double? amountLost});
}

/// @nodoc
class _$CancellationCutoffCopyWithImpl<$Res, $Val extends CancellationCutoff>
    implements $CancellationCutoffCopyWith<$Res> {
  _$CancellationCutoffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysBefore = null,
    Object? percentageLost = freezed,
    Object? amountLost = freezed,
  }) {
    return _then(_value.copyWith(
      daysBefore: null == daysBefore
          ? _value.daysBefore
          : daysBefore // ignore: cast_nullable_to_non_nullable
              as int,
      percentageLost: freezed == percentageLost
          ? _value.percentageLost
          : percentageLost // ignore: cast_nullable_to_non_nullable
              as double?,
      amountLost: freezed == amountLost
          ? _value.amountLost
          : amountLost // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CancellationCutoffCopyWith<$Res>
    implements $CancellationCutoffCopyWith<$Res> {
  factory _$$_CancellationCutoffCopyWith(_$_CancellationCutoff value,
          $Res Function(_$_CancellationCutoff) then) =
      __$$_CancellationCutoffCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int daysBefore, double? percentageLost, double? amountLost});
}

/// @nodoc
class __$$_CancellationCutoffCopyWithImpl<$Res>
    extends _$CancellationCutoffCopyWithImpl<$Res, _$_CancellationCutoff>
    implements _$$_CancellationCutoffCopyWith<$Res> {
  __$$_CancellationCutoffCopyWithImpl(
      _$_CancellationCutoff _value, $Res Function(_$_CancellationCutoff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysBefore = null,
    Object? percentageLost = freezed,
    Object? amountLost = freezed,
  }) {
    return _then(_$_CancellationCutoff(
      daysBefore: null == daysBefore
          ? _value.daysBefore
          : daysBefore // ignore: cast_nullable_to_non_nullable
              as int,
      percentageLost: freezed == percentageLost
          ? _value.percentageLost
          : percentageLost // ignore: cast_nullable_to_non_nullable
              as double?,
      amountLost: freezed == amountLost
          ? _value.amountLost
          : amountLost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CancellationCutoff extends _CancellationCutoff {
  const _$_CancellationCutoff(
      {required this.daysBefore, this.percentageLost, this.amountLost})
      : super._();

  factory _$_CancellationCutoff.fromJson(Map<String, dynamic> json) =>
      _$$_CancellationCutoffFromJson(json);

  @override
  final int daysBefore;
  @override
  final double? percentageLost;
  @override
  final double? amountLost;

  @override
  String toString() {
    return 'CancellationCutoff(daysBefore: $daysBefore, percentageLost: $percentageLost, amountLost: $amountLost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancellationCutoff &&
            (identical(other.daysBefore, daysBefore) ||
                other.daysBefore == daysBefore) &&
            (identical(other.percentageLost, percentageLost) ||
                other.percentageLost == percentageLost) &&
            (identical(other.amountLost, amountLost) ||
                other.amountLost == amountLost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, daysBefore, percentageLost, amountLost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancellationCutoffCopyWith<_$_CancellationCutoff> get copyWith =>
      __$$_CancellationCutoffCopyWithImpl<_$_CancellationCutoff>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancellationCutoffToJson(
      this,
    );
  }
}

abstract class _CancellationCutoff extends CancellationCutoff {
  const factory _CancellationCutoff(
      {required final int daysBefore,
      final double? percentageLost,
      final double? amountLost}) = _$_CancellationCutoff;
  const _CancellationCutoff._() : super._();

  factory _CancellationCutoff.fromJson(Map<String, dynamic> json) =
      _$_CancellationCutoff.fromJson;

  @override
  int get daysBefore;
  @override
  double? get percentageLost;
  @override
  double? get amountLost;
  @override
  @JsonKey(ignore: true)
  _$$_CancellationCutoffCopyWith<_$_CancellationCutoff> get copyWith =>
      throw _privateConstructorUsedError;
}
