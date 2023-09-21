// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentPolicy _$PaymentPolicyFromJson(Map<String, dynamic> json) {
  return _PaymentPolicy.fromJson(json);
}

/// @nodoc
mixin _$PaymentPolicy {
  List<PaymentDue> get paymentsDue => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentPolicyCopyWith<PaymentPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPolicyCopyWith<$Res> {
  factory $PaymentPolicyCopyWith(
          PaymentPolicy value, $Res Function(PaymentPolicy) then) =
      _$PaymentPolicyCopyWithImpl<$Res, PaymentPolicy>;
  @useResult
  $Res call(
      {List<PaymentDue> paymentsDue, PaymentType paymentType, String currency});
}

/// @nodoc
class _$PaymentPolicyCopyWithImpl<$Res, $Val extends PaymentPolicy>
    implements $PaymentPolicyCopyWith<$Res> {
  _$PaymentPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentsDue = null,
    Object? paymentType = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      paymentsDue: null == paymentsDue
          ? _value.paymentsDue
          : paymentsDue // ignore: cast_nullable_to_non_nullable
              as List<PaymentDue>,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentPolicyCopyWith<$Res>
    implements $PaymentPolicyCopyWith<$Res> {
  factory _$$_PaymentPolicyCopyWith(
          _$_PaymentPolicy value, $Res Function(_$_PaymentPolicy) then) =
      __$$_PaymentPolicyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PaymentDue> paymentsDue, PaymentType paymentType, String currency});
}

/// @nodoc
class __$$_PaymentPolicyCopyWithImpl<$Res>
    extends _$PaymentPolicyCopyWithImpl<$Res, _$_PaymentPolicy>
    implements _$$_PaymentPolicyCopyWith<$Res> {
  __$$_PaymentPolicyCopyWithImpl(
      _$_PaymentPolicy _value, $Res Function(_$_PaymentPolicy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentsDue = null,
    Object? paymentType = null,
    Object? currency = null,
  }) {
    return _then(_$_PaymentPolicy(
      paymentsDue: null == paymentsDue
          ? _value._paymentsDue
          : paymentsDue // ignore: cast_nullable_to_non_nullable
              as List<PaymentDue>,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentPolicy extends _PaymentPolicy {
  const _$_PaymentPolicy(
      {required final List<PaymentDue> paymentsDue,
      required this.paymentType,
      required this.currency})
      : _paymentsDue = paymentsDue,
        super._();

  factory _$_PaymentPolicy.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentPolicyFromJson(json);

  final List<PaymentDue> _paymentsDue;
  @override
  List<PaymentDue> get paymentsDue {
    if (_paymentsDue is EqualUnmodifiableListView) return _paymentsDue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentsDue);
  }

  @override
  final PaymentType paymentType;
  @override
  final String currency;

  @override
  String toString() {
    return 'PaymentPolicy(paymentsDue: $paymentsDue, paymentType: $paymentType, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentPolicy &&
            const DeepCollectionEquality()
                .equals(other._paymentsDue, _paymentsDue) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_paymentsDue), paymentType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentPolicyCopyWith<_$_PaymentPolicy> get copyWith =>
      __$$_PaymentPolicyCopyWithImpl<_$_PaymentPolicy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentPolicyToJson(
      this,
    );
  }
}

abstract class _PaymentPolicy extends PaymentPolicy {
  const factory _PaymentPolicy(
      {required final List<PaymentDue> paymentsDue,
      required final PaymentType paymentType,
      required final String currency}) = _$_PaymentPolicy;
  const _PaymentPolicy._() : super._();

  factory _PaymentPolicy.fromJson(Map<String, dynamic> json) =
      _$_PaymentPolicy.fromJson;

  @override
  List<PaymentDue> get paymentsDue;
  @override
  PaymentType get paymentType;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentPolicyCopyWith<_$_PaymentPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDue _$PaymentDueFromJson(Map<String, dynamic> json) {
  return _PaymentDue.fromJson(json);
}

/// @nodoc
mixin _$PaymentDue {
  double get amount => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;

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
  $Res call({double amount, DateTime dueDate});
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
    Object? dueDate = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $Res call({double amount, DateTime dueDate});
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
    Object? dueDate = null,
  }) {
    return _then(_$_PaymentDue(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDue extends _PaymentDue {
  const _$_PaymentDue({required this.amount, required this.dueDate})
      : super._();

  factory _$_PaymentDue.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDueFromJson(json);

  @override
  final double amount;
  @override
  final DateTime dueDate;

  @override
  String toString() {
    return 'PaymentDue(amount: $amount, dueDate: $dueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDue &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, dueDate);

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
      required final DateTime dueDate}) = _$_PaymentDue;
  const _PaymentDue._() : super._();

  factory _PaymentDue.fromJson(Map<String, dynamic> json) =
      _$_PaymentDue.fromJson;

  @override
  double get amount;
  @override
  DateTime get dueDate;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDueCopyWith<_$_PaymentDue> get copyWith =>
      throw _privateConstructorUsedError;
}
