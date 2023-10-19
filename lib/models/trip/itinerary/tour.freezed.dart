// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tour _$TourFromJson(Map<String, dynamic> json) {
  return _Tour.fromJson(json);
}

/// @nodoc
mixin _$Tour {
  String get name => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  OngoingExpense? get cost => throw _privateConstructorUsedError;
  List<Location>? get locationsVisited => throw _privateConstructorUsedError;
  Location? get depatureLocation => throw _privateConstructorUsedError;
  Location? get destinationLocation => throw _privateConstructorUsedError;
  DateTime? get departureTime => throw _privateConstructorUsedError;
  DateTime? get arrivalTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourCopyWith<Tour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourCopyWith<$Res> {
  factory $TourCopyWith(Tour value, $Res Function(Tour) then) =
      _$TourCopyWithImpl<$Res, Tour>;
  @useResult
  $Res call(
      {String name,
      DateTime startDate,
      DateTime endDate,
      OngoingExpense? cost,
      List<Location>? locationsVisited,
      Location? depatureLocation,
      Location? destinationLocation,
      DateTime? departureTime,
      DateTime? arrivalTime});

  $OngoingExpenseCopyWith<$Res>? get cost;
  $LocationCopyWith<$Res>? get depatureLocation;
  $LocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class _$TourCopyWithImpl<$Res, $Val extends Tour>
    implements $TourCopyWith<$Res> {
  _$TourCopyWithImpl(this._value, this._then);

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
    Object? cost = freezed,
    Object? locationsVisited = freezed,
    Object? depatureLocation = freezed,
    Object? destinationLocation = freezed,
    Object? departureTime = freezed,
    Object? arrivalTime = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as OngoingExpense?,
      locationsVisited: freezed == locationsVisited
          ? _value.locationsVisited
          : locationsVisited // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
      depatureLocation: freezed == depatureLocation
          ? _value.depatureLocation
          : depatureLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      destinationLocation: freezed == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OngoingExpenseCopyWith<$Res>? get cost {
    if (_value.cost == null) {
      return null;
    }

    return $OngoingExpenseCopyWith<$Res>(_value.cost!, (value) {
      return _then(_value.copyWith(cost: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get depatureLocation {
    if (_value.depatureLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.depatureLocation!, (value) {
      return _then(_value.copyWith(depatureLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get destinationLocation {
    if (_value.destinationLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.destinationLocation!, (value) {
      return _then(_value.copyWith(destinationLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TourCopyWith<$Res> implements $TourCopyWith<$Res> {
  factory _$$_TourCopyWith(_$_Tour value, $Res Function(_$_Tour) then) =
      __$$_TourCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime startDate,
      DateTime endDate,
      OngoingExpense? cost,
      List<Location>? locationsVisited,
      Location? depatureLocation,
      Location? destinationLocation,
      DateTime? departureTime,
      DateTime? arrivalTime});

  @override
  $OngoingExpenseCopyWith<$Res>? get cost;
  @override
  $LocationCopyWith<$Res>? get depatureLocation;
  @override
  $LocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class __$$_TourCopyWithImpl<$Res> extends _$TourCopyWithImpl<$Res, _$_Tour>
    implements _$$_TourCopyWith<$Res> {
  __$$_TourCopyWithImpl(_$_Tour _value, $Res Function(_$_Tour) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? cost = freezed,
    Object? locationsVisited = freezed,
    Object? depatureLocation = freezed,
    Object? destinationLocation = freezed,
    Object? departureTime = freezed,
    Object? arrivalTime = freezed,
  }) {
    return _then(_$_Tour(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as OngoingExpense?,
      locationsVisited: freezed == locationsVisited
          ? _value._locationsVisited
          : locationsVisited // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
      depatureLocation: freezed == depatureLocation
          ? _value.depatureLocation
          : depatureLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      destinationLocation: freezed == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tour extends _Tour {
  const _$_Tour(
      {required this.name,
      required this.startDate,
      required this.endDate,
      this.cost,
      final List<Location>? locationsVisited,
      this.depatureLocation,
      this.destinationLocation,
      this.departureTime,
      this.arrivalTime})
      : _locationsVisited = locationsVisited,
        super._();

  factory _$_Tour.fromJson(Map<String, dynamic> json) => _$$_TourFromJson(json);

  @override
  final String name;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final OngoingExpense? cost;
  final List<Location>? _locationsVisited;
  @override
  List<Location>? get locationsVisited {
    final value = _locationsVisited;
    if (value == null) return null;
    if (_locationsVisited is EqualUnmodifiableListView)
      return _locationsVisited;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Location? depatureLocation;
  @override
  final Location? destinationLocation;
  @override
  final DateTime? departureTime;
  @override
  final DateTime? arrivalTime;

  @override
  String toString() {
    return 'Tour(name: $name, startDate: $startDate, endDate: $endDate, cost: $cost, locationsVisited: $locationsVisited, depatureLocation: $depatureLocation, destinationLocation: $destinationLocation, departureTime: $departureTime, arrivalTime: $arrivalTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tour &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            const DeepCollectionEquality()
                .equals(other._locationsVisited, _locationsVisited) &&
            (identical(other.depatureLocation, depatureLocation) ||
                other.depatureLocation == depatureLocation) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      startDate,
      endDate,
      cost,
      const DeepCollectionEquality().hash(_locationsVisited),
      depatureLocation,
      destinationLocation,
      departureTime,
      arrivalTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TourCopyWith<_$_Tour> get copyWith =>
      __$$_TourCopyWithImpl<_$_Tour>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TourToJson(
      this,
    );
  }
}

abstract class _Tour extends Tour {
  const factory _Tour(
      {required final String name,
      required final DateTime startDate,
      required final DateTime endDate,
      final OngoingExpense? cost,
      final List<Location>? locationsVisited,
      final Location? depatureLocation,
      final Location? destinationLocation,
      final DateTime? departureTime,
      final DateTime? arrivalTime}) = _$_Tour;
  const _Tour._() : super._();

  factory _Tour.fromJson(Map<String, dynamic> json) = _$_Tour.fromJson;

  @override
  String get name;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  OngoingExpense? get cost;
  @override
  List<Location>? get locationsVisited;
  @override
  Location? get depatureLocation;
  @override
  Location? get destinationLocation;
  @override
  DateTime? get departureTime;
  @override
  DateTime? get arrivalTime;
  @override
  @JsonKey(ignore: true)
  _$$_TourCopyWith<_$_Tour> get copyWith => throw _privateConstructorUsedError;
}
