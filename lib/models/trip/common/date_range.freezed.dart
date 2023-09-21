// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateRange _$DateRangeFromJson(Map<String, dynamic> json) {
  return _DateRange.fromJson(json);
}

/// @nodoc
mixin _$DateRange {
  Date get start => throw _privateConstructorUsedError;
  Date get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateRangeCopyWith<DateRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRangeCopyWith<$Res> {
  factory $DateRangeCopyWith(DateRange value, $Res Function(DateRange) then) =
      _$DateRangeCopyWithImpl<$Res, DateRange>;
  @useResult
  $Res call({Date start, Date end});

  $DateCopyWith<$Res> get start;
  $DateCopyWith<$Res> get end;
}

/// @nodoc
class _$DateRangeCopyWithImpl<$Res, $Val extends DateRange>
    implements $DateRangeCopyWith<$Res> {
  _$DateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Date,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Date,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get start {
    return $DateCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get end {
    return $DateCopyWith<$Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DateRangeCopyWith<$Res> implements $DateRangeCopyWith<$Res> {
  factory _$$_DateRangeCopyWith(
          _$_DateRange value, $Res Function(_$_DateRange) then) =
      __$$_DateRangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Date start, Date end});

  @override
  $DateCopyWith<$Res> get start;
  @override
  $DateCopyWith<$Res> get end;
}

/// @nodoc
class __$$_DateRangeCopyWithImpl<$Res>
    extends _$DateRangeCopyWithImpl<$Res, _$_DateRange>
    implements _$$_DateRangeCopyWith<$Res> {
  __$$_DateRangeCopyWithImpl(
      _$_DateRange _value, $Res Function(_$_DateRange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_DateRange(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Date,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Date,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateRange extends _DateRange {
  const _$_DateRange({required this.start, required this.end}) : super._();

  factory _$_DateRange.fromJson(Map<String, dynamic> json) =>
      _$$_DateRangeFromJson(json);

  @override
  final Date start;
  @override
  final Date end;

  @override
  String toString() {
    return 'DateRange(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateRange &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateRangeCopyWith<_$_DateRange> get copyWith =>
      __$$_DateRangeCopyWithImpl<_$_DateRange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateRangeToJson(
      this,
    );
  }
}

abstract class _DateRange extends DateRange {
  const factory _DateRange(
      {required final Date start, required final Date end}) = _$_DateRange;
  const _DateRange._() : super._();

  factory _DateRange.fromJson(Map<String, dynamic> json) =
      _$_DateRange.fromJson;

  @override
  Date get start;
  @override
  Date get end;
  @override
  @JsonKey(ignore: true)
  _$$_DateRangeCopyWith<_$_DateRange> get copyWith =>
      throw _privateConstructorUsedError;
}
