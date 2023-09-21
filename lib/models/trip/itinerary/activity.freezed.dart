// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  Attraction get attraction => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  bool? get isAllDay => throw _privateConstructorUsedError;
  bool? get confirmed => throw _privateConstructorUsedError;
  bool? get paid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {Attraction attraction,
      DateTime date,
      DateTime? startTime,
      DateTime? endTime,
      bool? isAllDay,
      bool? confirmed,
      bool? paid});

  $AttractionCopyWith<$Res> get attraction;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attraction = null,
    Object? date = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isAllDay = freezed,
    Object? confirmed = freezed,
    Object? paid = freezed,
  }) {
    return _then(_value.copyWith(
      attraction: null == attraction
          ? _value.attraction
          : attraction // ignore: cast_nullable_to_non_nullable
              as Attraction,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAllDay: freezed == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttractionCopyWith<$Res> get attraction {
    return $AttractionCopyWith<$Res>(_value.attraction, (value) {
      return _then(_value.copyWith(attraction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$$_ActivityCopyWith(
          _$_Activity value, $Res Function(_$_Activity) then) =
      __$$_ActivityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Attraction attraction,
      DateTime date,
      DateTime? startTime,
      DateTime? endTime,
      bool? isAllDay,
      bool? confirmed,
      bool? paid});

  @override
  $AttractionCopyWith<$Res> get attraction;
}

/// @nodoc
class __$$_ActivityCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$_Activity>
    implements _$$_ActivityCopyWith<$Res> {
  __$$_ActivityCopyWithImpl(
      _$_Activity _value, $Res Function(_$_Activity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attraction = null,
    Object? date = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isAllDay = freezed,
    Object? confirmed = freezed,
    Object? paid = freezed,
  }) {
    return _then(_$_Activity(
      attraction: null == attraction
          ? _value.attraction
          : attraction // ignore: cast_nullable_to_non_nullable
              as Attraction,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAllDay: freezed == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Activity extends _Activity {
  const _$_Activity(
      {required this.attraction,
      required this.date,
      this.startTime,
      this.endTime,
      this.isAllDay,
      this.confirmed,
      this.paid})
      : super._();

  factory _$_Activity.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityFromJson(json);

  @override
  final Attraction attraction;
  @override
  final DateTime date;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final bool? isAllDay;
  @override
  final bool? confirmed;
  @override
  final bool? paid;

  @override
  String toString() {
    return 'Activity(attraction: $attraction, date: $date, startTime: $startTime, endTime: $endTime, isAllDay: $isAllDay, confirmed: $confirmed, paid: $paid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Activity &&
            (identical(other.attraction, attraction) ||
                other.attraction == attraction) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isAllDay, isAllDay) ||
                other.isAllDay == isAllDay) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.paid, paid) || other.paid == paid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attraction, date, startTime,
      endTime, isAllDay, confirmed, paid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActivityCopyWith<_$_Activity> get copyWith =>
      __$$_ActivityCopyWithImpl<_$_Activity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityToJson(
      this,
    );
  }
}

abstract class _Activity extends Activity {
  const factory _Activity(
      {required final Attraction attraction,
      required final DateTime date,
      final DateTime? startTime,
      final DateTime? endTime,
      final bool? isAllDay,
      final bool? confirmed,
      final bool? paid}) = _$_Activity;
  const _Activity._() : super._();

  factory _Activity.fromJson(Map<String, dynamic> json) = _$_Activity.fromJson;

  @override
  Attraction get attraction;
  @override
  DateTime get date;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  bool? get isAllDay;
  @override
  bool? get confirmed;
  @override
  bool? get paid;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityCopyWith<_$_Activity> get copyWith =>
      throw _privateConstructorUsedError;
}
