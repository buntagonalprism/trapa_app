// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return _Reservation.fromJson(json);
}

/// @nodoc
mixin _$Reservation {
  Accommodation get accommodation => throw _privateConstructorUsedError;
  DateTime get checkIn => throw _privateConstructorUsedError;
  DateTime get checkOut => throw _privateConstructorUsedError;
  OngoingExpense? get cost => throw _privateConstructorUsedError;
  CancellationPolicy? get cancellationPolicy =>
      throw _privateConstructorUsedError;
  PaymentPolicy? get paymentPolicy => throw _privateConstructorUsedError;
  ContactDetails? get contactDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res, Reservation>;
  @useResult
  $Res call(
      {Accommodation accommodation,
      DateTime checkIn,
      DateTime checkOut,
      OngoingExpense? cost,
      CancellationPolicy? cancellationPolicy,
      PaymentPolicy? paymentPolicy,
      ContactDetails? contactDetails});

  $AccommodationCopyWith<$Res> get accommodation;
  $OngoingExpenseCopyWith<$Res>? get cost;
  $CancellationPolicyCopyWith<$Res>? get cancellationPolicy;
  $PaymentPolicyCopyWith<$Res>? get paymentPolicy;
  $ContactDetailsCopyWith<$Res>? get contactDetails;
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res, $Val extends Reservation>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accommodation = null,
    Object? checkIn = null,
    Object? checkOut = null,
    Object? cost = freezed,
    Object? cancellationPolicy = freezed,
    Object? paymentPolicy = freezed,
    Object? contactDetails = freezed,
  }) {
    return _then(_value.copyWith(
      accommodation: null == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation,
      checkIn: null == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkOut: null == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as OngoingExpense?,
      cancellationPolicy: freezed == cancellationPolicy
          ? _value.cancellationPolicy
          : cancellationPolicy // ignore: cast_nullable_to_non_nullable
              as CancellationPolicy?,
      paymentPolicy: freezed == paymentPolicy
          ? _value.paymentPolicy
          : paymentPolicy // ignore: cast_nullable_to_non_nullable
              as PaymentPolicy?,
      contactDetails: freezed == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccommodationCopyWith<$Res> get accommodation {
    return $AccommodationCopyWith<$Res>(_value.accommodation, (value) {
      return _then(_value.copyWith(accommodation: value) as $Val);
    });
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
  $CancellationPolicyCopyWith<$Res>? get cancellationPolicy {
    if (_value.cancellationPolicy == null) {
      return null;
    }

    return $CancellationPolicyCopyWith<$Res>(_value.cancellationPolicy!,
        (value) {
      return _then(_value.copyWith(cancellationPolicy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentPolicyCopyWith<$Res>? get paymentPolicy {
    if (_value.paymentPolicy == null) {
      return null;
    }

    return $PaymentPolicyCopyWith<$Res>(_value.paymentPolicy!, (value) {
      return _then(_value.copyWith(paymentPolicy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactDetailsCopyWith<$Res>? get contactDetails {
    if (_value.contactDetails == null) {
      return null;
    }

    return $ContactDetailsCopyWith<$Res>(_value.contactDetails!, (value) {
      return _then(_value.copyWith(contactDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReservationCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$_ReservationCopyWith(
          _$_Reservation value, $Res Function(_$_Reservation) then) =
      __$$_ReservationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Accommodation accommodation,
      DateTime checkIn,
      DateTime checkOut,
      OngoingExpense? cost,
      CancellationPolicy? cancellationPolicy,
      PaymentPolicy? paymentPolicy,
      ContactDetails? contactDetails});

  @override
  $AccommodationCopyWith<$Res> get accommodation;
  @override
  $OngoingExpenseCopyWith<$Res>? get cost;
  @override
  $CancellationPolicyCopyWith<$Res>? get cancellationPolicy;
  @override
  $PaymentPolicyCopyWith<$Res>? get paymentPolicy;
  @override
  $ContactDetailsCopyWith<$Res>? get contactDetails;
}

/// @nodoc
class __$$_ReservationCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$_Reservation>
    implements _$$_ReservationCopyWith<$Res> {
  __$$_ReservationCopyWithImpl(
      _$_Reservation _value, $Res Function(_$_Reservation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accommodation = null,
    Object? checkIn = null,
    Object? checkOut = null,
    Object? cost = freezed,
    Object? cancellationPolicy = freezed,
    Object? paymentPolicy = freezed,
    Object? contactDetails = freezed,
  }) {
    return _then(_$_Reservation(
      accommodation: null == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation,
      checkIn: null == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkOut: null == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as OngoingExpense?,
      cancellationPolicy: freezed == cancellationPolicy
          ? _value.cancellationPolicy
          : cancellationPolicy // ignore: cast_nullable_to_non_nullable
              as CancellationPolicy?,
      paymentPolicy: freezed == paymentPolicy
          ? _value.paymentPolicy
          : paymentPolicy // ignore: cast_nullable_to_non_nullable
              as PaymentPolicy?,
      contactDetails: freezed == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reservation extends _Reservation {
  const _$_Reservation(
      {required this.accommodation,
      required this.checkIn,
      required this.checkOut,
      this.cost,
      this.cancellationPolicy,
      this.paymentPolicy,
      this.contactDetails})
      : super._();

  factory _$_Reservation.fromJson(Map<String, dynamic> json) =>
      _$$_ReservationFromJson(json);

  @override
  final Accommodation accommodation;
  @override
  final DateTime checkIn;
  @override
  final DateTime checkOut;
  @override
  final OngoingExpense? cost;
  @override
  final CancellationPolicy? cancellationPolicy;
  @override
  final PaymentPolicy? paymentPolicy;
  @override
  final ContactDetails? contactDetails;

  @override
  String toString() {
    return 'Reservation(accommodation: $accommodation, checkIn: $checkIn, checkOut: $checkOut, cost: $cost, cancellationPolicy: $cancellationPolicy, paymentPolicy: $paymentPolicy, contactDetails: $contactDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reservation &&
            (identical(other.accommodation, accommodation) ||
                other.accommodation == accommodation) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.cancellationPolicy, cancellationPolicy) ||
                other.cancellationPolicy == cancellationPolicy) &&
            (identical(other.paymentPolicy, paymentPolicy) ||
                other.paymentPolicy == paymentPolicy) &&
            (identical(other.contactDetails, contactDetails) ||
                other.contactDetails == contactDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accommodation, checkIn, checkOut,
      cost, cancellationPolicy, paymentPolicy, contactDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReservationCopyWith<_$_Reservation> get copyWith =>
      __$$_ReservationCopyWithImpl<_$_Reservation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReservationToJson(
      this,
    );
  }
}

abstract class _Reservation extends Reservation {
  const factory _Reservation(
      {required final Accommodation accommodation,
      required final DateTime checkIn,
      required final DateTime checkOut,
      final OngoingExpense? cost,
      final CancellationPolicy? cancellationPolicy,
      final PaymentPolicy? paymentPolicy,
      final ContactDetails? contactDetails}) = _$_Reservation;
  const _Reservation._() : super._();

  factory _Reservation.fromJson(Map<String, dynamic> json) =
      _$_Reservation.fromJson;

  @override
  Accommodation get accommodation;
  @override
  DateTime get checkIn;
  @override
  DateTime get checkOut;
  @override
  OngoingExpense? get cost;
  @override
  CancellationPolicy? get cancellationPolicy;
  @override
  PaymentPolicy? get paymentPolicy;
  @override
  ContactDetails? get contactDetails;
  @override
  @JsonKey(ignore: true)
  _$$_ReservationCopyWith<_$_Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}
