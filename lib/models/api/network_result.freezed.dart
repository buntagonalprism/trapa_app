// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(String displayMessage) error,
    required TResult Function() unknownError,
    required TResult Function() connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(String displayMessage)? error,
    TResult? Function()? unknownError,
    TResult? Function()? connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String displayMessage)? error,
    TResult Function()? unknownError,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkResultSuccess<T> value) success,
    required TResult Function(NetworkResultError<T> value) error,
    required TResult Function(NetworkResultUnknownError<T> value) unknownError,
    required TResult Function(NetworkResultConnectionError<T> value)
        connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkResultSuccess<T> value)? success,
    TResult? Function(NetworkResultError<T> value)? error,
    TResult? Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult? Function(NetworkResultConnectionError<T> value)? connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<T> value)? success,
    TResult Function(NetworkResultError<T> value)? error,
    TResult Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult Function(NetworkResultConnectionError<T> value)? connectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResultCopyWith<T, $Res> {
  factory $NetworkResultCopyWith(
          NetworkResult<T> value, $Res Function(NetworkResult<T>) then) =
      _$NetworkResultCopyWithImpl<T, $Res, NetworkResult<T>>;
}

/// @nodoc
class _$NetworkResultCopyWithImpl<T, $Res, $Val extends NetworkResult<T>>
    implements $NetworkResultCopyWith<T, $Res> {
  _$NetworkResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkResultSuccessCopyWith<T, $Res> {
  factory _$$NetworkResultSuccessCopyWith(_$NetworkResultSuccess<T> value,
          $Res Function(_$NetworkResultSuccess<T>) then) =
      __$$NetworkResultSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$NetworkResultSuccessCopyWithImpl<T, $Res>
    extends _$NetworkResultCopyWithImpl<T, $Res, _$NetworkResultSuccess<T>>
    implements _$$NetworkResultSuccessCopyWith<T, $Res> {
  __$$NetworkResultSuccessCopyWithImpl(_$NetworkResultSuccess<T> _value,
      $Res Function(_$NetworkResultSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$NetworkResultSuccess<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NetworkResultSuccess<T> implements NetworkResultSuccess<T> {
  const _$NetworkResultSuccess(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'NetworkResult<$T>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkResultSuccess<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkResultSuccessCopyWith<T, _$NetworkResultSuccess<T>> get copyWith =>
      __$$NetworkResultSuccessCopyWithImpl<T, _$NetworkResultSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(String displayMessage) error,
    required TResult Function() unknownError,
    required TResult Function() connectionError,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(String displayMessage)? error,
    TResult? Function()? unknownError,
    TResult? Function()? connectionError,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String displayMessage)? error,
    TResult Function()? unknownError,
    TResult Function()? connectionError,
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
    required TResult Function(NetworkResultSuccess<T> value) success,
    required TResult Function(NetworkResultError<T> value) error,
    required TResult Function(NetworkResultUnknownError<T> value) unknownError,
    required TResult Function(NetworkResultConnectionError<T> value)
        connectionError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkResultSuccess<T> value)? success,
    TResult? Function(NetworkResultError<T> value)? error,
    TResult? Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult? Function(NetworkResultConnectionError<T> value)? connectionError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<T> value)? success,
    TResult Function(NetworkResultError<T> value)? error,
    TResult Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult Function(NetworkResultConnectionError<T> value)? connectionError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NetworkResultSuccess<T> implements NetworkResult<T> {
  const factory NetworkResultSuccess(final T value) = _$NetworkResultSuccess<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$NetworkResultSuccessCopyWith<T, _$NetworkResultSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkResultErrorCopyWith<T, $Res> {
  factory _$$NetworkResultErrorCopyWith(_$NetworkResultError<T> value,
          $Res Function(_$NetworkResultError<T>) then) =
      __$$NetworkResultErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String displayMessage});
}

/// @nodoc
class __$$NetworkResultErrorCopyWithImpl<T, $Res>
    extends _$NetworkResultCopyWithImpl<T, $Res, _$NetworkResultError<T>>
    implements _$$NetworkResultErrorCopyWith<T, $Res> {
  __$$NetworkResultErrorCopyWithImpl(_$NetworkResultError<T> _value,
      $Res Function(_$NetworkResultError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayMessage = null,
  }) {
    return _then(_$NetworkResultError<T>(
      null == displayMessage
          ? _value.displayMessage
          : displayMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkResultError<T> implements NetworkResultError<T> {
  const _$NetworkResultError(this.displayMessage);

  @override
  final String displayMessage;

  @override
  String toString() {
    return 'NetworkResult<$T>.error(displayMessage: $displayMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkResultError<T> &&
            (identical(other.displayMessage, displayMessage) ||
                other.displayMessage == displayMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkResultErrorCopyWith<T, _$NetworkResultError<T>> get copyWith =>
      __$$NetworkResultErrorCopyWithImpl<T, _$NetworkResultError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(String displayMessage) error,
    required TResult Function() unknownError,
    required TResult Function() connectionError,
  }) {
    return error(displayMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(String displayMessage)? error,
    TResult? Function()? unknownError,
    TResult? Function()? connectionError,
  }) {
    return error?.call(displayMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String displayMessage)? error,
    TResult Function()? unknownError,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(displayMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkResultSuccess<T> value) success,
    required TResult Function(NetworkResultError<T> value) error,
    required TResult Function(NetworkResultUnknownError<T> value) unknownError,
    required TResult Function(NetworkResultConnectionError<T> value)
        connectionError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkResultSuccess<T> value)? success,
    TResult? Function(NetworkResultError<T> value)? error,
    TResult? Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult? Function(NetworkResultConnectionError<T> value)? connectionError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<T> value)? success,
    TResult Function(NetworkResultError<T> value)? error,
    TResult Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult Function(NetworkResultConnectionError<T> value)? connectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NetworkResultError<T> implements NetworkResult<T> {
  const factory NetworkResultError(final String displayMessage) =
      _$NetworkResultError<T>;

  String get displayMessage;
  @JsonKey(ignore: true)
  _$$NetworkResultErrorCopyWith<T, _$NetworkResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkResultUnknownErrorCopyWith<T, $Res> {
  factory _$$NetworkResultUnknownErrorCopyWith(
          _$NetworkResultUnknownError<T> value,
          $Res Function(_$NetworkResultUnknownError<T>) then) =
      __$$NetworkResultUnknownErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkResultUnknownErrorCopyWithImpl<T, $Res>
    extends _$NetworkResultCopyWithImpl<T, $Res, _$NetworkResultUnknownError<T>>
    implements _$$NetworkResultUnknownErrorCopyWith<T, $Res> {
  __$$NetworkResultUnknownErrorCopyWithImpl(
      _$NetworkResultUnknownError<T> _value,
      $Res Function(_$NetworkResultUnknownError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkResultUnknownError<T> implements NetworkResultUnknownError<T> {
  const _$NetworkResultUnknownError();

  @override
  String toString() {
    return 'NetworkResult<$T>.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkResultUnknownError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(String displayMessage) error,
    required TResult Function() unknownError,
    required TResult Function() connectionError,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(String displayMessage)? error,
    TResult? Function()? unknownError,
    TResult? Function()? connectionError,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String displayMessage)? error,
    TResult Function()? unknownError,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkResultSuccess<T> value) success,
    required TResult Function(NetworkResultError<T> value) error,
    required TResult Function(NetworkResultUnknownError<T> value) unknownError,
    required TResult Function(NetworkResultConnectionError<T> value)
        connectionError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkResultSuccess<T> value)? success,
    TResult? Function(NetworkResultError<T> value)? error,
    TResult? Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult? Function(NetworkResultConnectionError<T> value)? connectionError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<T> value)? success,
    TResult Function(NetworkResultError<T> value)? error,
    TResult Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult Function(NetworkResultConnectionError<T> value)? connectionError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class NetworkResultUnknownError<T> implements NetworkResult<T> {
  const factory NetworkResultUnknownError() = _$NetworkResultUnknownError<T>;
}

/// @nodoc
abstract class _$$NetworkResultConnectionErrorCopyWith<T, $Res> {
  factory _$$NetworkResultConnectionErrorCopyWith(
          _$NetworkResultConnectionError<T> value,
          $Res Function(_$NetworkResultConnectionError<T>) then) =
      __$$NetworkResultConnectionErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkResultConnectionErrorCopyWithImpl<T, $Res>
    extends _$NetworkResultCopyWithImpl<T, $Res,
        _$NetworkResultConnectionError<T>>
    implements _$$NetworkResultConnectionErrorCopyWith<T, $Res> {
  __$$NetworkResultConnectionErrorCopyWithImpl(
      _$NetworkResultConnectionError<T> _value,
      $Res Function(_$NetworkResultConnectionError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkResultConnectionError<T>
    implements NetworkResultConnectionError<T> {
  const _$NetworkResultConnectionError();

  @override
  String toString() {
    return 'NetworkResult<$T>.connectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkResultConnectionError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(String displayMessage) error,
    required TResult Function() unknownError,
    required TResult Function() connectionError,
  }) {
    return connectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(String displayMessage)? error,
    TResult? Function()? unknownError,
    TResult? Function()? connectionError,
  }) {
    return connectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String displayMessage)? error,
    TResult Function()? unknownError,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkResultSuccess<T> value) success,
    required TResult Function(NetworkResultError<T> value) error,
    required TResult Function(NetworkResultUnknownError<T> value) unknownError,
    required TResult Function(NetworkResultConnectionError<T> value)
        connectionError,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkResultSuccess<T> value)? success,
    TResult? Function(NetworkResultError<T> value)? error,
    TResult? Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult? Function(NetworkResultConnectionError<T> value)? connectionError,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<T> value)? success,
    TResult Function(NetworkResultError<T> value)? error,
    TResult Function(NetworkResultUnknownError<T> value)? unknownError,
    TResult Function(NetworkResultConnectionError<T> value)? connectionError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class NetworkResultConnectionError<T> implements NetworkResult<T> {
  const factory NetworkResultConnectionError() =
      _$NetworkResultConnectionError<T>;
}
