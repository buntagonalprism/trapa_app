// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_due.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDue _$PaymentDueFromJson(Map<String, dynamic> json) {
  return _PaymentDue.fromJson(json);
}

/// @nodoc
mixin _$PaymentDue {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  PaymentDueType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDueCopyWith<PaymentDue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDueCopyWith<$Res> {
  factory $PaymentDueCopyWith(
          PaymentDue value, $Res Function(PaymentDue) then) =
      _$PaymentDueCopyWithImpl<$Res, PaymentDue>;
  @useResult
  $Res call(
      {double amount, String currency, DateTime dueDate, PaymentDueType type});
}

/// @nodoc
class _$PaymentDueCopyWithImpl<$Res, $Val extends PaymentDue>
    implements $PaymentDueCopyWith<$Res> {
  _$PaymentDueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? dueDate = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaymentDueType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDueCopyWith<$Res>
    implements $PaymentDueCopyWith<$Res> {
  factory _$$_PaymentDueCopyWith(
          _$_PaymentDue value, $Res Function(_$_PaymentDue) then) =
      __$$_PaymentDueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount, String currency, DateTime dueDate, PaymentDueType type});
}

/// @nodoc
class __$$_PaymentDueCopyWithImpl<$Res>
    extends _$PaymentDueCopyWithImpl<$Res, _$_PaymentDue>
    implements _$$_PaymentDueCopyWith<$Res> {
  __$$_PaymentDueCopyWithImpl(
      _$_PaymentDue _value, $Res Function(_$_PaymentDue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? dueDate = null,
    Object? type = null,
  }) {
    return _then(_$_PaymentDue(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaymentDueType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDue extends _PaymentDue {
  const _$_PaymentDue(
      {required this.amount,
      required this.currency,
      required this.dueDate,
      required this.type})
      : super._();

  factory _$_PaymentDue.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDueFromJson(json);

  @override
  final double amount;
  @override
  final String currency;
  @override
  final DateTime dueDate;
  @override
  final PaymentDueType type;

  @override
  String toString() {
    return 'PaymentDue(amount: $amount, currency: $currency, dueDate: $dueDate, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDue &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency, dueDate, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDueCopyWith<_$_PaymentDue> get copyWith =>
      __$$_PaymentDueCopyWithImpl<_$_PaymentDue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDueToJson(
      this,
    );
  }
}

abstract class _PaymentDue extends PaymentDue {
  const factory _PaymentDue(
      {required final double amount,
      required final String currency,
      required final DateTime dueDate,
      required final PaymentDueType type}) = _$_PaymentDue;
  const _PaymentDue._() : super._();

  factory _PaymentDue.fromJson(Map<String, dynamic> json) =
      _$_PaymentDue.fromJson;

  @override
  double get amount;
  @override
  String get currency;
  @override
  DateTime get dueDate;
  @override
  PaymentDueType get type;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDueCopyWith<_$_PaymentDue> get copyWith =>
      throw _privateConstructorUsedError;
}
