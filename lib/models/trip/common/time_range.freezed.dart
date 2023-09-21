// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeRange _$TimeRangeFromJson(Map<String, dynamic> json) {
  return _TimeRange.fromJson(json);
}

/// @nodoc
mixin _$TimeRange {
  Time get open => throw _privateConstructorUsedError;
  Time get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeRangeCopyWith<TimeRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeRangeCopyWith<$Res> {
  factory $TimeRangeCopyWith(TimeRange value, $Res Function(TimeRange) then) =
      _$TimeRangeCopyWithImpl<$Res, TimeRange>;
  @useResult
  $Res call({Time open, Time close});

  $TimeCopyWith<$Res> get open;
  $TimeCopyWith<$Res> get close;
}

/// @nodoc
class _$TimeRangeCopyWithImpl<$Res, $Val extends TimeRange>
    implements $TimeRangeCopyWith<$Res> {
  _$TimeRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as Time,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as Time,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res> get open {
    return $TimeCopyWith<$Res>(_value.open, (value) {
      return _then(_value.copyWith(open: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res> get close {
    return $TimeCopyWith<$Res>(_value.close, (value) {
      return _then(_value.copyWith(close: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimeRangeCopyWith<$Res> implements $TimeRangeCopyWith<$Res> {
  factory _$$_TimeRangeCopyWith(
          _$_TimeRange value, $Res Function(_$_TimeRange) then) =
      __$$_TimeRangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Time open, Time close});

  @override
  $TimeCopyWith<$Res> get open;
  @override
  $TimeCopyWith<$Res> get close;
}

/// @nodoc
class __$$_TimeRangeCopyWithImpl<$Res>
    extends _$TimeRangeCopyWithImpl<$Res, _$_TimeRange>
    implements _$$_TimeRangeCopyWith<$Res> {
  __$$_TimeRangeCopyWithImpl(
      _$_TimeRange _value, $Res Function(_$_TimeRange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_$_TimeRange(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as Time,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as Time,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeRange extends _TimeRange {
  const _$_TimeRange({required this.open, required this.close}) : super._();

  factory _$_TimeRange.fromJson(Map<String, dynamic> json) =>
      _$$_TimeRangeFromJson(json);

  @override
  final Time open;
  @override
  final Time close;

  @override
  String toString() {
    return 'TimeRange(open: $open, close: $close)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeRange &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeRangeCopyWith<_$_TimeRange> get copyWith =>
      __$$_TimeRangeCopyWithImpl<_$_TimeRange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeRangeToJson(
      this,
    );
  }
}

abstract class _TimeRange extends TimeRange {
  const factory _TimeRange(
      {required final Time open, required final Time close}) = _$_TimeRange;
  const _TimeRange._() : super._();

  factory _TimeRange.fromJson(Map<String, dynamic> json) =
      _$_TimeRange.fromJson;

  @override
  Time get open;
  @override
  Time get close;
  @override
  @JsonKey(ignore: true)
  _$$_TimeRangeCopyWith<_$_TimeRange> get copyWith =>
      throw _privateConstructorUsedError;
}
