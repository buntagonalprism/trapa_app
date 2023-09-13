// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OperationResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(OperationError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(OperationError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(OperationError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationResultSuccess<T> value) success,
    required TResult Function(OperationResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationResultSuccess<T> value)? success,
    TResult? Function(OperationResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationResultSuccess<T> value)? success,
    TResult Function(OperationResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationResultCopyWith<T, $Res> {
  factory $OperationResultCopyWith(
          OperationResult<T> value, $Res Function(OperationResult<T>) then) =
      _$OperationResultCopyWithImpl<T, $Res, OperationResult<T>>;
}

/// @nodoc
class _$OperationResultCopyWithImpl<T, $Res, $Val extends OperationResult<T>>
    implements $OperationResultCopyWith<T, $Res> {
  _$OperationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OperationResultSuccessCopyWith<T, $Res> {
  factory _$$OperationResultSuccessCopyWith(_$OperationResultSuccess<T> value,
          $Res Function(_$OperationResultSuccess<T>) then) =
      __$$OperationResultSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$OperationResultSuccessCopyWithImpl<T, $Res>
    extends _$OperationResultCopyWithImpl<T, $Res, _$OperationResultSuccess<T>>
    implements _$$OperationResultSuccessCopyWith<T, $Res> {
  __$$OperationResultSuccessCopyWithImpl(_$OperationResultSuccess<T> _value,
      $Res Function(_$OperationResultSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$OperationResultSuccess<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$OperationResultSuccess<T> implements OperationResultSuccess<T> {
  const _$OperationResultSuccess(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'OperationResult<$T>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationResultSuccess<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationResultSuccessCopyWith<T, _$OperationResultSuccess<T>>
      get copyWith => __$$OperationResultSuccessCopyWithImpl<T,
          _$OperationResultSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(OperationError error) error,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(OperationError error)? error,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(OperationError error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationResultSuccess<T> value) success,
    required TResult Function(OperationResultError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationResultSuccess<T> value)? success,
    TResult? Function(OperationResultError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationResultSuccess<T> value)? success,
    TResult Function(OperationResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class OperationResultSuccess<T> implements OperationResult<T> {
  const factory OperationResultSuccess(final T value) =
      _$OperationResultSuccess<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$OperationResultSuccessCopyWith<T, _$OperationResultSuccess<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OperationResultErrorCopyWith<T, $Res> {
  factory _$$OperationResultErrorCopyWith(_$OperationResultError<T> value,
          $Res Function(_$OperationResultError<T>) then) =
      __$$OperationResultErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationError error});
}

/// @nodoc
class __$$OperationResultErrorCopyWithImpl<T, $Res>
    extends _$OperationResultCopyWithImpl<T, $Res, _$OperationResultError<T>>
    implements _$$OperationResultErrorCopyWith<T, $Res> {
  __$$OperationResultErrorCopyWithImpl(_$OperationResultError<T> _value,
      $Res Function(_$OperationResultError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OperationResultError<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as OperationError,
    ));
  }
}

/// @nodoc

class _$OperationResultError<T> implements OperationResultError<T> {
  const _$OperationResultError(this.error);

  @override
  final OperationError error;

  @override
  String toString() {
    return 'OperationResult<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationResultError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationResultErrorCopyWith<T, _$OperationResultError<T>> get copyWith =>
      __$$OperationResultErrorCopyWithImpl<T, _$OperationResultError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(OperationError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(OperationError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(OperationError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationResultSuccess<T> value) success,
    required TResult Function(OperationResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationResultSuccess<T> value)? success,
    TResult? Function(OperationResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationResultSuccess<T> value)? success,
    TResult Function(OperationResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OperationResultError<T> implements OperationResult<T> {
  const factory OperationResultError(final OperationError error) =
      _$OperationResultError<T>;

  OperationError get error;
  @JsonKey(ignore: true)
  _$$OperationResultErrorCopyWith<T, _$OperationResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
