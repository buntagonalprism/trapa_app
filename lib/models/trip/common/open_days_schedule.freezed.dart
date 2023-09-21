// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_days_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenDaysSchedule _$OpenDaysScheduleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'weekly':
      return _WeeklySchedule.fromJson(json);
    case 'monthly':
      return _MonthlySchedule.fromJson(json);
    case 'occurrencesInMonth':
      return _OccurrenceInMonthSchedule.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OpenDaysSchedule',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OpenDaysSchedule {
  List<Object> get days => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayOfWeek> days) weekly,
    required TResult Function(List<int> days) monthly,
    required TResult Function(List<OccurrenceInMonth> days) occurrencesInMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DayOfWeek> days)? weekly,
    TResult? Function(List<int> days)? monthly,
    TResult? Function(List<OccurrenceInMonth> days)? occurrencesInMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayOfWeek> days)? weekly,
    TResult Function(List<int> days)? monthly,
    TResult Function(List<OccurrenceInMonth> days)? occurrencesInMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeeklySchedule value) weekly,
    required TResult Function(_MonthlySchedule value) monthly,
    required TResult Function(_OccurrenceInMonthSchedule value)
        occurrencesInMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeeklySchedule value)? weekly,
    TResult? Function(_MonthlySchedule value)? monthly,
    TResult? Function(_OccurrenceInMonthSchedule value)? occurrencesInMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeeklySchedule value)? weekly,
    TResult Function(_MonthlySchedule value)? monthly,
    TResult Function(_OccurrenceInMonthSchedule value)? occurrencesInMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenDaysScheduleCopyWith<$Res> {
  factory $OpenDaysScheduleCopyWith(
          OpenDaysSchedule value, $Res Function(OpenDaysSchedule) then) =
      _$OpenDaysScheduleCopyWithImpl<$Res, OpenDaysSchedule>;
}

/// @nodoc
class _$OpenDaysScheduleCopyWithImpl<$Res, $Val extends OpenDaysSchedule>
    implements $OpenDaysScheduleCopyWith<$Res> {
  _$OpenDaysScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WeeklyScheduleCopyWith<$Res> {
  factory _$$_WeeklyScheduleCopyWith(
          _$_WeeklySchedule value, $Res Function(_$_WeeklySchedule) then) =
      __$$_WeeklyScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DayOfWeek> days});
}

/// @nodoc
class __$$_WeeklyScheduleCopyWithImpl<$Res>
    extends _$OpenDaysScheduleCopyWithImpl<$Res, _$_WeeklySchedule>
    implements _$$_WeeklyScheduleCopyWith<$Res> {
  __$$_WeeklyScheduleCopyWithImpl(
      _$_WeeklySchedule _value, $Res Function(_$_WeeklySchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$_WeeklySchedule(
      null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayOfWeek>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeeklySchedule implements _WeeklySchedule {
  const _$_WeeklySchedule(final List<DayOfWeek> days, {final String? $type})
      : _days = days,
        $type = $type ?? 'weekly';

  factory _$_WeeklySchedule.fromJson(Map<String, dynamic> json) =>
      _$$_WeeklyScheduleFromJson(json);

  final List<DayOfWeek> _days;
  @override
  List<DayOfWeek> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenDaysSchedule.weekly(days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeeklySchedule &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeeklyScheduleCopyWith<_$_WeeklySchedule> get copyWith =>
      __$$_WeeklyScheduleCopyWithImpl<_$_WeeklySchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayOfWeek> days) weekly,
    required TResult Function(List<int> days) monthly,
    required TResult Function(List<OccurrenceInMonth> days) occurrencesInMonth,
  }) {
    return weekly(days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DayOfWeek> days)? weekly,
    TResult? Function(List<int> days)? monthly,
    TResult? Function(List<OccurrenceInMonth> days)? occurrencesInMonth,
  }) {
    return weekly?.call(days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayOfWeek> days)? weekly,
    TResult Function(List<int> days)? monthly,
    TResult Function(List<OccurrenceInMonth> days)? occurrencesInMonth,
    required TResult orElse(),
  }) {
    if (weekly != null) {
      return weekly(days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeeklySchedule value) weekly,
    required TResult Function(_MonthlySchedule value) monthly,
    required TResult Function(_OccurrenceInMonthSchedule value)
        occurrencesInMonth,
  }) {
    return weekly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeeklySchedule value)? weekly,
    TResult? Function(_MonthlySchedule value)? monthly,
    TResult? Function(_OccurrenceInMonthSchedule value)? occurrencesInMonth,
  }) {
    return weekly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeeklySchedule value)? weekly,
    TResult Function(_MonthlySchedule value)? monthly,
    TResult Function(_OccurrenceInMonthSchedule value)? occurrencesInMonth,
    required TResult orElse(),
  }) {
    if (weekly != null) {
      return weekly(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeeklyScheduleToJson(
      this,
    );
  }
}

abstract class _WeeklySchedule implements OpenDaysSchedule {
  const factory _WeeklySchedule(final List<DayOfWeek> days) = _$_WeeklySchedule;

  factory _WeeklySchedule.fromJson(Map<String, dynamic> json) =
      _$_WeeklySchedule.fromJson;

  @override
  List<DayOfWeek> get days;
  @JsonKey(ignore: true)
  _$$_WeeklyScheduleCopyWith<_$_WeeklySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MonthlyScheduleCopyWith<$Res> {
  factory _$$_MonthlyScheduleCopyWith(
          _$_MonthlySchedule value, $Res Function(_$_MonthlySchedule) then) =
      __$$_MonthlyScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> days});
}

/// @nodoc
class __$$_MonthlyScheduleCopyWithImpl<$Res>
    extends _$OpenDaysScheduleCopyWithImpl<$Res, _$_MonthlySchedule>
    implements _$$_MonthlyScheduleCopyWith<$Res> {
  __$$_MonthlyScheduleCopyWithImpl(
      _$_MonthlySchedule _value, $Res Function(_$_MonthlySchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$_MonthlySchedule(
      null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MonthlySchedule implements _MonthlySchedule {
  const _$_MonthlySchedule(final List<int> days, {final String? $type})
      : _days = days,
        $type = $type ?? 'monthly';

  factory _$_MonthlySchedule.fromJson(Map<String, dynamic> json) =>
      _$$_MonthlyScheduleFromJson(json);

  final List<int> _days;
  @override
  List<int> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenDaysSchedule.monthly(days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthlySchedule &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthlyScheduleCopyWith<_$_MonthlySchedule> get copyWith =>
      __$$_MonthlyScheduleCopyWithImpl<_$_MonthlySchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayOfWeek> days) weekly,
    required TResult Function(List<int> days) monthly,
    required TResult Function(List<OccurrenceInMonth> days) occurrencesInMonth,
  }) {
    return monthly(days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DayOfWeek> days)? weekly,
    TResult? Function(List<int> days)? monthly,
    TResult? Function(List<OccurrenceInMonth> days)? occurrencesInMonth,
  }) {
    return monthly?.call(days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayOfWeek> days)? weekly,
    TResult Function(List<int> days)? monthly,
    TResult Function(List<OccurrenceInMonth> days)? occurrencesInMonth,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly(days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeeklySchedule value) weekly,
    required TResult Function(_MonthlySchedule value) monthly,
    required TResult Function(_OccurrenceInMonthSchedule value)
        occurrencesInMonth,
  }) {
    return monthly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeeklySchedule value)? weekly,
    TResult? Function(_MonthlySchedule value)? monthly,
    TResult? Function(_OccurrenceInMonthSchedule value)? occurrencesInMonth,
  }) {
    return monthly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeeklySchedule value)? weekly,
    TResult Function(_MonthlySchedule value)? monthly,
    TResult Function(_OccurrenceInMonthSchedule value)? occurrencesInMonth,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonthlyScheduleToJson(
      this,
    );
  }
}

abstract class _MonthlySchedule implements OpenDaysSchedule {
  const factory _MonthlySchedule(final List<int> days) = _$_MonthlySchedule;

  factory _MonthlySchedule.fromJson(Map<String, dynamic> json) =
      _$_MonthlySchedule.fromJson;

  @override
  List<int> get days;
  @JsonKey(ignore: true)
  _$$_MonthlyScheduleCopyWith<_$_MonthlySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OccurrenceInMonthScheduleCopyWith<$Res> {
  factory _$$_OccurrenceInMonthScheduleCopyWith(
          _$_OccurrenceInMonthSchedule value,
          $Res Function(_$_OccurrenceInMonthSchedule) then) =
      __$$_OccurrenceInMonthScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OccurrenceInMonth> days});
}

/// @nodoc
class __$$_OccurrenceInMonthScheduleCopyWithImpl<$Res>
    extends _$OpenDaysScheduleCopyWithImpl<$Res, _$_OccurrenceInMonthSchedule>
    implements _$$_OccurrenceInMonthScheduleCopyWith<$Res> {
  __$$_OccurrenceInMonthScheduleCopyWithImpl(
      _$_OccurrenceInMonthSchedule _value,
      $Res Function(_$_OccurrenceInMonthSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$_OccurrenceInMonthSchedule(
      null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<OccurrenceInMonth>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OccurrenceInMonthSchedule implements _OccurrenceInMonthSchedule {
  const _$_OccurrenceInMonthSchedule(final List<OccurrenceInMonth> days,
      {final String? $type})
      : _days = days,
        $type = $type ?? 'occurrencesInMonth';

  factory _$_OccurrenceInMonthSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_OccurrenceInMonthScheduleFromJson(json);

  final List<OccurrenceInMonth> _days;
  @override
  List<OccurrenceInMonth> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenDaysSchedule.occurrencesInMonth(days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OccurrenceInMonthSchedule &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OccurrenceInMonthScheduleCopyWith<_$_OccurrenceInMonthSchedule>
      get copyWith => __$$_OccurrenceInMonthScheduleCopyWithImpl<
          _$_OccurrenceInMonthSchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayOfWeek> days) weekly,
    required TResult Function(List<int> days) monthly,
    required TResult Function(List<OccurrenceInMonth> days) occurrencesInMonth,
  }) {
    return occurrencesInMonth(days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DayOfWeek> days)? weekly,
    TResult? Function(List<int> days)? monthly,
    TResult? Function(List<OccurrenceInMonth> days)? occurrencesInMonth,
  }) {
    return occurrencesInMonth?.call(days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayOfWeek> days)? weekly,
    TResult Function(List<int> days)? monthly,
    TResult Function(List<OccurrenceInMonth> days)? occurrencesInMonth,
    required TResult orElse(),
  }) {
    if (occurrencesInMonth != null) {
      return occurrencesInMonth(days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeeklySchedule value) weekly,
    required TResult Function(_MonthlySchedule value) monthly,
    required TResult Function(_OccurrenceInMonthSchedule value)
        occurrencesInMonth,
  }) {
    return occurrencesInMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeeklySchedule value)? weekly,
    TResult? Function(_MonthlySchedule value)? monthly,
    TResult? Function(_OccurrenceInMonthSchedule value)? occurrencesInMonth,
  }) {
    return occurrencesInMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeeklySchedule value)? weekly,
    TResult Function(_MonthlySchedule value)? monthly,
    TResult Function(_OccurrenceInMonthSchedule value)? occurrencesInMonth,
    required TResult orElse(),
  }) {
    if (occurrencesInMonth != null) {
      return occurrencesInMonth(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccurrenceInMonthScheduleToJson(
      this,
    );
  }
}

abstract class _OccurrenceInMonthSchedule implements OpenDaysSchedule {
  const factory _OccurrenceInMonthSchedule(final List<OccurrenceInMonth> days) =
      _$_OccurrenceInMonthSchedule;

  factory _OccurrenceInMonthSchedule.fromJson(Map<String, dynamic> json) =
      _$_OccurrenceInMonthSchedule.fromJson;

  @override
  List<OccurrenceInMonth> get days;
  @JsonKey(ignore: true)
  _$$_OccurrenceInMonthScheduleCopyWith<_$_OccurrenceInMonthSchedule>
      get copyWith => throw _privateConstructorUsedError;
}

OccurrenceInMonth _$OccurrenceInMonthFromJson(Map<String, dynamic> json) {
  return _OccurrenceInMonth.fromJson(json);
}

/// @nodoc
mixin _$OccurrenceInMonth {
  int get occurence => throw _privateConstructorUsedError;
  DayOfWeek get dayOfWeek => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurrenceInMonthCopyWith<OccurrenceInMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurrenceInMonthCopyWith<$Res> {
  factory $OccurrenceInMonthCopyWith(
          OccurrenceInMonth value, $Res Function(OccurrenceInMonth) then) =
      _$OccurrenceInMonthCopyWithImpl<$Res, OccurrenceInMonth>;
  @useResult
  $Res call({int occurence, DayOfWeek dayOfWeek});
}

/// @nodoc
class _$OccurrenceInMonthCopyWithImpl<$Res, $Val extends OccurrenceInMonth>
    implements $OccurrenceInMonthCopyWith<$Res> {
  _$OccurrenceInMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurence = null,
    Object? dayOfWeek = null,
  }) {
    return _then(_value.copyWith(
      occurence: null == occurence
          ? _value.occurence
          : occurence // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OccurrenceInMonthCopyWith<$Res>
    implements $OccurrenceInMonthCopyWith<$Res> {
  factory _$$_OccurrenceInMonthCopyWith(_$_OccurrenceInMonth value,
          $Res Function(_$_OccurrenceInMonth) then) =
      __$$_OccurrenceInMonthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int occurence, DayOfWeek dayOfWeek});
}

/// @nodoc
class __$$_OccurrenceInMonthCopyWithImpl<$Res>
    extends _$OccurrenceInMonthCopyWithImpl<$Res, _$_OccurrenceInMonth>
    implements _$$_OccurrenceInMonthCopyWith<$Res> {
  __$$_OccurrenceInMonthCopyWithImpl(
      _$_OccurrenceInMonth _value, $Res Function(_$_OccurrenceInMonth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurence = null,
    Object? dayOfWeek = null,
  }) {
    return _then(_$_OccurrenceInMonth(
      occurence: null == occurence
          ? _value.occurence
          : occurence // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OccurrenceInMonth extends _OccurrenceInMonth {
  const _$_OccurrenceInMonth({required this.occurence, required this.dayOfWeek})
      : super._();

  factory _$_OccurrenceInMonth.fromJson(Map<String, dynamic> json) =>
      _$$_OccurrenceInMonthFromJson(json);

  @override
  final int occurence;
  @override
  final DayOfWeek dayOfWeek;

  @override
  String toString() {
    return 'OccurrenceInMonth(occurence: $occurence, dayOfWeek: $dayOfWeek)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OccurrenceInMonth &&
            (identical(other.occurence, occurence) ||
                other.occurence == occurence) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, occurence, dayOfWeek);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OccurrenceInMonthCopyWith<_$_OccurrenceInMonth> get copyWith =>
      __$$_OccurrenceInMonthCopyWithImpl<_$_OccurrenceInMonth>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccurrenceInMonthToJson(
      this,
    );
  }
}

abstract class _OccurrenceInMonth extends OccurrenceInMonth {
  const factory _OccurrenceInMonth(
      {required final int occurence,
      required final DayOfWeek dayOfWeek}) = _$_OccurrenceInMonth;
  const _OccurrenceInMonth._() : super._();

  factory _OccurrenceInMonth.fromJson(Map<String, dynamic> json) =
      _$_OccurrenceInMonth.fromJson;

  @override
  int get occurence;
  @override
  DayOfWeek get dayOfWeek;
  @override
  @JsonKey(ignore: true)
  _$$_OccurrenceInMonthCopyWith<_$_OccurrenceInMonth> get copyWith =>
      throw _privateConstructorUsedError;
}
