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

/// @nodoc
mixin _$OperationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() inProgress,
    required TResult Function(OperationResult<T> result) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? inProgress,
    TResult? Function(OperationResult<T> result)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? inProgress,
    TResult Function(OperationResult<T> result)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationStatePending<T> value) pending,
    required TResult Function(OperationStateInProgress<T> value) inProgress,
    required TResult Function(OperationStateResult<T> value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationStatePending<T> value)? pending,
    TResult? Function(OperationStateInProgress<T> value)? inProgress,
    TResult? Function(OperationStateResult<T> value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationStatePending<T> value)? pending,
    TResult Function(OperationStateInProgress<T> value)? inProgress,
    TResult Function(OperationStateResult<T> value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationStateCopyWith<T, $Res> {
  factory $OperationStateCopyWith(
          OperationState<T> value, $Res Function(OperationState<T>) then) =
      _$OperationStateCopyWithImpl<T, $Res, OperationState<T>>;
}

/// @nodoc
class _$OperationStateCopyWithImpl<T, $Res, $Val extends OperationState<T>>
    implements $OperationStateCopyWith<T, $Res> {
  _$OperationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OperationStatePendingCopyWith<T, $Res> {
  factory _$$OperationStatePendingCopyWith(_$OperationStatePending<T> value,
          $Res Function(_$OperationStatePending<T>) then) =
      __$$OperationStatePendingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OperationStatePendingCopyWithImpl<T, $Res>
    extends _$OperationStateCopyWithImpl<T, $Res, _$OperationStatePending<T>>
    implements _$$OperationStatePendingCopyWith<T, $Res> {
  __$$OperationStatePendingCopyWithImpl(_$OperationStatePending<T> _value,
      $Res Function(_$OperationStatePending<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OperationStatePending<T> implements OperationStatePending<T> {
  const _$OperationStatePending();

  @override
  String toString() {
    return 'OperationState<$T>.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationStatePending<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() inProgress,
    required TResult Function(OperationResult<T> result) result,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? inProgress,
    TResult? Function(OperationResult<T> result)? result,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? inProgress,
    TResult Function(OperationResult<T> result)? result,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationStatePending<T> value) pending,
    required TResult Function(OperationStateInProgress<T> value) inProgress,
    required TResult Function(OperationStateResult<T> value) result,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationStatePending<T> value)? pending,
    TResult? Function(OperationStateInProgress<T> value)? inProgress,
    TResult? Function(OperationStateResult<T> value)? result,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationStatePending<T> value)? pending,
    TResult Function(OperationStateInProgress<T> value)? inProgress,
    TResult Function(OperationStateResult<T> value)? result,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class OperationStatePending<T> implements OperationState<T> {
  const factory OperationStatePending() = _$OperationStatePending<T>;
}

/// @nodoc
abstract class _$$OperationStateInProgressCopyWith<T, $Res> {
  factory _$$OperationStateInProgressCopyWith(
          _$OperationStateInProgress<T> value,
          $Res Function(_$OperationStateInProgress<T>) then) =
      __$$OperationStateInProgressCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OperationStateInProgressCopyWithImpl<T, $Res>
    extends _$OperationStateCopyWithImpl<T, $Res, _$OperationStateInProgress<T>>
    implements _$$OperationStateInProgressCopyWith<T, $Res> {
  __$$OperationStateInProgressCopyWithImpl(_$OperationStateInProgress<T> _value,
      $Res Function(_$OperationStateInProgress<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OperationStateInProgress<T> implements OperationStateInProgress<T> {
  const _$OperationStateInProgress();

  @override
  String toString() {
    return 'OperationState<$T>.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationStateInProgress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() inProgress,
    required TResult Function(OperationResult<T> result) result,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? inProgress,
    TResult? Function(OperationResult<T> result)? result,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? inProgress,
    TResult Function(OperationResult<T> result)? result,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationStatePending<T> value) pending,
    required TResult Function(OperationStateInProgress<T> value) inProgress,
    required TResult Function(OperationStateResult<T> value) result,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationStatePending<T> value)? pending,
    TResult? Function(OperationStateInProgress<T> value)? inProgress,
    TResult? Function(OperationStateResult<T> value)? result,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationStatePending<T> value)? pending,
    TResult Function(OperationStateInProgress<T> value)? inProgress,
    TResult Function(OperationStateResult<T> value)? result,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class OperationStateInProgress<T> implements OperationState<T> {
  const factory OperationStateInProgress() = _$OperationStateInProgress<T>;
}

/// @nodoc
abstract class _$$OperationStateResultCopyWith<T, $Res> {
  factory _$$OperationStateResultCopyWith(_$OperationStateResult<T> value,
          $Res Function(_$OperationStateResult<T>) then) =
      __$$OperationStateResultCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationResult<T> result});

  $OperationResultCopyWith<T, $Res> get result;
}

/// @nodoc
class __$$OperationStateResultCopyWithImpl<T, $Res>
    extends _$OperationStateCopyWithImpl<T, $Res, _$OperationStateResult<T>>
    implements _$$OperationStateResultCopyWith<T, $Res> {
  __$$OperationStateResultCopyWithImpl(_$OperationStateResult<T> _value,
      $Res Function(_$OperationStateResult<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$OperationStateResult<T>(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as OperationResult<T>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OperationResultCopyWith<T, $Res> get result {
    return $OperationResultCopyWith<T, $Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$OperationStateResult<T> implements OperationStateResult<T> {
  const _$OperationStateResult(this.result);

  @override
  final OperationResult<T> result;

  @override
  String toString() {
    return 'OperationState<$T>.result(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationStateResult<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationStateResultCopyWith<T, _$OperationStateResult<T>> get copyWith =>
      __$$OperationStateResultCopyWithImpl<T, _$OperationStateResult<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() inProgress,
    required TResult Function(OperationResult<T> result) result,
  }) {
    return result(this.result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? inProgress,
    TResult? Function(OperationResult<T> result)? result,
  }) {
    return result?.call(this.result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? inProgress,
    TResult Function(OperationResult<T> result)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this.result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationStatePending<T> value) pending,
    required TResult Function(OperationStateInProgress<T> value) inProgress,
    required TResult Function(OperationStateResult<T> value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationStatePending<T> value)? pending,
    TResult? Function(OperationStateInProgress<T> value)? inProgress,
    TResult? Function(OperationStateResult<T> value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationStatePending<T> value)? pending,
    TResult Function(OperationStateInProgress<T> value)? inProgress,
    TResult Function(OperationStateResult<T> value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class OperationStateResult<T> implements OperationState<T> {
  const factory OperationStateResult(final OperationResult<T> result) =
      _$OperationStateResult<T>;

  OperationResult<T> get result;
  @JsonKey(ignore: true)
  _$$OperationStateResultCopyWith<T, _$OperationStateResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
