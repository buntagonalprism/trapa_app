// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportOptions _$TransportOptionsFromJson(Map<String, dynamic> json) {
  return _TransportOptions.fromJson(json);
}

/// @nodoc
mixin _$TransportOptions {
  Region get departure => throw _privateConstructorUsedError;
  Region get destination => throw _privateConstructorUsedError;
  List<List<TransportLeg>> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportOptionsCopyWith<TransportOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportOptionsCopyWith<$Res> {
  factory $TransportOptionsCopyWith(
          TransportOptions value, $Res Function(TransportOptions) then) =
      _$TransportOptionsCopyWithImpl<$Res, TransportOptions>;
  @useResult
  $Res call(
      {Region departure, Region destination, List<List<TransportLeg>> options});

  $RegionCopyWith<$Res> get departure;
  $RegionCopyWith<$Res> get destination;
}

/// @nodoc
class _$TransportOptionsCopyWithImpl<$Res, $Val extends TransportOptions>
    implements $TransportOptionsCopyWith<$Res> {
  _$TransportOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = null,
    Object? destination = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as Region,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Region,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<List<TransportLeg>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get departure {
    return $RegionCopyWith<$Res>(_value.departure, (value) {
      return _then(_value.copyWith(departure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get destination {
    return $RegionCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransportOptionsCopyWith<$Res>
    implements $TransportOptionsCopyWith<$Res> {
  factory _$$_TransportOptionsCopyWith(
          _$_TransportOptions value, $Res Function(_$_TransportOptions) then) =
      __$$_TransportOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Region departure, Region destination, List<List<TransportLeg>> options});

  @override
  $RegionCopyWith<$Res> get departure;
  @override
  $RegionCopyWith<$Res> get destination;
}

/// @nodoc
class __$$_TransportOptionsCopyWithImpl<$Res>
    extends _$TransportOptionsCopyWithImpl<$Res, _$_TransportOptions>
    implements _$$_TransportOptionsCopyWith<$Res> {
  __$$_TransportOptionsCopyWithImpl(
      _$_TransportOptions _value, $Res Function(_$_TransportOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = null,
    Object? destination = null,
    Object? options = null,
  }) {
    return _then(_$_TransportOptions(
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as Region,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Region,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<List<TransportLeg>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportOptions extends _TransportOptions {
  const _$_TransportOptions(
      {required this.departure,
      required this.destination,
      required final List<List<TransportLeg>> options})
      : _options = options,
        super._();

  factory _$_TransportOptions.fromJson(Map<String, dynamic> json) =>
      _$$_TransportOptionsFromJson(json);

  @override
  final Region departure;
  @override
  final Region destination;
  final List<List<TransportLeg>> _options;
  @override
  List<List<TransportLeg>> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'TransportOptions(departure: $departure, destination: $destination, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransportOptions &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, departure, destination,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransportOptionsCopyWith<_$_TransportOptions> get copyWith =>
      __$$_TransportOptionsCopyWithImpl<_$_TransportOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportOptionsToJson(
      this,
    );
  }
}

abstract class _TransportOptions extends TransportOptions {
  const factory _TransportOptions(
      {required final Region departure,
      required final Region destination,
      required final List<List<TransportLeg>> options}) = _$_TransportOptions;
  const _TransportOptions._() : super._();

  factory _TransportOptions.fromJson(Map<String, dynamic> json) =
      _$_TransportOptions.fromJson;

  @override
  Region get departure;
  @override
  Region get destination;
  @override
  List<List<TransportLeg>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_TransportOptionsCopyWith<_$_TransportOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
