// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ongoing_expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OngoingExpense _$OngoingExpenseFromJson(Map<String, dynamic> json) {
  return _OngoingExpense.fromJson(json);
}

/// @nodoc
mixin _$OngoingExpense {
  String get name => throw _privateConstructorUsedError;
  ExpenseType get expense => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  bool? get paid => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime? get paidDate => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OngoingExpenseCopyWith<OngoingExpense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OngoingExpenseCopyWith<$Res> {
  factory $OngoingExpenseCopyWith(
          OngoingExpense value, $Res Function(OngoingExpense) then) =
      _$OngoingExpenseCopyWithImpl<$Res, OngoingExpense>;
  @useResult
  $Res call(
      {String name,
      ExpenseType expense,
      double amount,
      String currency,
      bool? paid,
      DateTime? dueDate,
      DateTime? paidDate,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$OngoingExpenseCopyWithImpl<$Res, $Val extends OngoingExpense>
    implements $OngoingExpenseCopyWith<$Res> {
  _$OngoingExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? expense = null,
    Object? amount = null,
    Object? currency = null,
    Object? paid = freezed,
    Object? dueDate = freezed,
    Object? paidDate = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidDate: freezed == paidDate
          ? _value.paidDate
          : paidDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OngoingExpenseCopyWith<$Res>
    implements $OngoingExpenseCopyWith<$Res> {
  factory _$$_OngoingExpenseCopyWith(
          _$_OngoingExpense value, $Res Function(_$_OngoingExpense) then) =
      __$$_OngoingExpenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      ExpenseType expense,
      double amount,
      String currency,
      bool? paid,
      DateTime? dueDate,
      DateTime? paidDate,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$_OngoingExpenseCopyWithImpl<$Res>
    extends _$OngoingExpenseCopyWithImpl<$Res, _$_OngoingExpense>
    implements _$$_OngoingExpenseCopyWith<$Res> {
  __$$_OngoingExpenseCopyWithImpl(
      _$_OngoingExpense _value, $Res Function(_$_OngoingExpense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? expense = null,
    Object? amount = null,
    Object? currency = null,
    Object? paid = freezed,
    Object? dueDate = freezed,
    Object? paidDate = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_OngoingExpense(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidDate: freezed == paidDate
          ? _value.paidDate
          : paidDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OngoingExpense extends _OngoingExpense {
  const _$_OngoingExpense(
      {required this.name,
      required this.expense,
      required this.amount,
      required this.currency,
      this.paid,
      this.dueDate,
      this.paidDate,
      this.startDate,
      this.endDate})
      : super._();

  factory _$_OngoingExpense.fromJson(Map<String, dynamic> json) =>
      _$$_OngoingExpenseFromJson(json);

  @override
  final String name;
  @override
  final ExpenseType expense;
  @override
  final double amount;
  @override
  final String currency;
  @override
  final bool? paid;
  @override
  final DateTime? dueDate;
  @override
  final DateTime? paidDate;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'OngoingExpense(name: $name, expense: $expense, amount: $amount, currency: $currency, paid: $paid, dueDate: $dueDate, paidDate: $paidDate, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OngoingExpense &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paidDate, paidDate) ||
                other.paidDate == paidDate) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, expense, amount, currency,
      paid, dueDate, paidDate, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OngoingExpenseCopyWith<_$_OngoingExpense> get copyWith =>
      __$$_OngoingExpenseCopyWithImpl<_$_OngoingExpense>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OngoingExpenseToJson(
      this,
    );
  }
}

abstract class _OngoingExpense extends OngoingExpense {
  const factory _OngoingExpense(
      {required final String name,
      required final ExpenseType expense,
      required final double amount,
      required final String currency,
      final bool? paid,
      final DateTime? dueDate,
      final DateTime? paidDate,
      final DateTime? startDate,
      final DateTime? endDate}) = _$_OngoingExpense;
  const _OngoingExpense._() : super._();

  factory _OngoingExpense.fromJson(Map<String, dynamic> json) =
      _$_OngoingExpense.fromJson;

  @override
  String get name;
  @override
  ExpenseType get expense;
  @override
  double get amount;
  @override
  String get currency;
  @override
  bool? get paid;
  @override
  DateTime? get dueDate;
  @override
  DateTime? get paidDate;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_OngoingExpenseCopyWith<_$_OngoingExpense> get copyWith =>
      throw _privateConstructorUsedError;
}
