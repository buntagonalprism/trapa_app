// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_observable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkDataSnapshot<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, DataSource source) data,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, DataSource source)? data,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, DataSource source)? data,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkDataSnapshotData<T> value) data,
    required TResult Function(NetworkDataSnapshotError<T> value) unknownError,
    required TResult Function(NetworkDataSnapshotLoading<T> value) loading,
    required TResult Function(NetworkDataSnapshotNotFound<T> value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkDataSnapshotData<T> value)? data,
    TResult? Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult? Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult? Function(NetworkDataSnapshotNotFound<T> value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkDataSnapshotData<T> value)? data,
    TResult Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult Function(NetworkDataSnapshotNotFound<T> value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkDataSnapshotCopyWith<T, $Res> {
  factory $NetworkDataSnapshotCopyWith(NetworkDataSnapshot<T> value,
          $Res Function(NetworkDataSnapshot<T>) then) =
      _$NetworkDataSnapshotCopyWithImpl<T, $Res, NetworkDataSnapshot<T>>;
}

/// @nodoc
class _$NetworkDataSnapshotCopyWithImpl<T, $Res,
        $Val extends NetworkDataSnapshot<T>>
    implements $NetworkDataSnapshotCopyWith<T, $Res> {
  _$NetworkDataSnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkDataSnapshotDataCopyWith<T, $Res> {
  factory _$$NetworkDataSnapshotDataCopyWith(_$NetworkDataSnapshotData<T> value,
          $Res Function(_$NetworkDataSnapshotData<T>) then) =
      __$$NetworkDataSnapshotDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, DataSource source});
}

/// @nodoc
class __$$NetworkDataSnapshotDataCopyWithImpl<T, $Res>
    extends _$NetworkDataSnapshotCopyWithImpl<T, $Res,
        _$NetworkDataSnapshotData<T>>
    implements _$$NetworkDataSnapshotDataCopyWith<T, $Res> {
  __$$NetworkDataSnapshotDataCopyWithImpl(_$NetworkDataSnapshotData<T> _value,
      $Res Function(_$NetworkDataSnapshotData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? source = null,
  }) {
    return _then(_$NetworkDataSnapshotData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as DataSource,
    ));
  }
}

/// @nodoc

class _$NetworkDataSnapshotData<T> implements NetworkDataSnapshotData<T> {
  const _$NetworkDataSnapshotData(this.data, this.source);

  @override
  final T data;
  @override
  final DataSource source;

  @override
  String toString() {
    return 'NetworkDataSnapshot<$T>.data(data: $data, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkDataSnapshotData<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkDataSnapshotDataCopyWith<T, _$NetworkDataSnapshotData<T>>
      get copyWith => __$$NetworkDataSnapshotDataCopyWithImpl<T,
          _$NetworkDataSnapshotData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, DataSource source) data,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() notFound,
  }) {
    return data(this.data, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, DataSource source)? data,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? notFound,
  }) {
    return data?.call(this.data, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, DataSource source)? data,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkDataSnapshotData<T> value) data,
    required TResult Function(NetworkDataSnapshotError<T> value) unknownError,
    required TResult Function(NetworkDataSnapshotLoading<T> value) loading,
    required TResult Function(NetworkDataSnapshotNotFound<T> value) notFound,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkDataSnapshotData<T> value)? data,
    TResult? Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult? Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult? Function(NetworkDataSnapshotNotFound<T> value)? notFound,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkDataSnapshotData<T> value)? data,
    TResult Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult Function(NetworkDataSnapshotNotFound<T> value)? notFound,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class NetworkDataSnapshotData<T> implements NetworkDataSnapshot<T> {
  const factory NetworkDataSnapshotData(final T data, final DataSource source) =
      _$NetworkDataSnapshotData<T>;

  T get data;
  DataSource get source;
  @JsonKey(ignore: true)
  _$$NetworkDataSnapshotDataCopyWith<T, _$NetworkDataSnapshotData<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkDataSnapshotErrorCopyWith<T, $Res> {
  factory _$$NetworkDataSnapshotErrorCopyWith(
          _$NetworkDataSnapshotError<T> value,
          $Res Function(_$NetworkDataSnapshotError<T>) then) =
      __$$NetworkDataSnapshotErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkDataSnapshotErrorCopyWithImpl<T, $Res>
    extends _$NetworkDataSnapshotCopyWithImpl<T, $Res,
        _$NetworkDataSnapshotError<T>>
    implements _$$NetworkDataSnapshotErrorCopyWith<T, $Res> {
  __$$NetworkDataSnapshotErrorCopyWithImpl(_$NetworkDataSnapshotError<T> _value,
      $Res Function(_$NetworkDataSnapshotError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkDataSnapshotError<T> implements NetworkDataSnapshotError<T> {
  const _$NetworkDataSnapshotError();

  @override
  String toString() {
    return 'NetworkDataSnapshot<$T>.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkDataSnapshotError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, DataSource source) data,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() notFound,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, DataSource source)? data,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? notFound,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, DataSource source)? data,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? notFound,
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
    required TResult Function(NetworkDataSnapshotData<T> value) data,
    required TResult Function(NetworkDataSnapshotError<T> value) unknownError,
    required TResult Function(NetworkDataSnapshotLoading<T> value) loading,
    required TResult Function(NetworkDataSnapshotNotFound<T> value) notFound,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkDataSnapshotData<T> value)? data,
    TResult? Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult? Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult? Function(NetworkDataSnapshotNotFound<T> value)? notFound,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkDataSnapshotData<T> value)? data,
    TResult Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult Function(NetworkDataSnapshotNotFound<T> value)? notFound,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class NetworkDataSnapshotError<T> implements NetworkDataSnapshot<T> {
  const factory NetworkDataSnapshotError() = _$NetworkDataSnapshotError<T>;
}

/// @nodoc
abstract class _$$NetworkDataSnapshotLoadingCopyWith<T, $Res> {
  factory _$$NetworkDataSnapshotLoadingCopyWith(
          _$NetworkDataSnapshotLoading<T> value,
          $Res Function(_$NetworkDataSnapshotLoading<T>) then) =
      __$$NetworkDataSnapshotLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkDataSnapshotLoadingCopyWithImpl<T, $Res>
    extends _$NetworkDataSnapshotCopyWithImpl<T, $Res,
        _$NetworkDataSnapshotLoading<T>>
    implements _$$NetworkDataSnapshotLoadingCopyWith<T, $Res> {
  __$$NetworkDataSnapshotLoadingCopyWithImpl(
      _$NetworkDataSnapshotLoading<T> _value,
      $Res Function(_$NetworkDataSnapshotLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkDataSnapshotLoading<T> implements NetworkDataSnapshotLoading<T> {
  const _$NetworkDataSnapshotLoading();

  @override
  String toString() {
    return 'NetworkDataSnapshot<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkDataSnapshotLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, DataSource source) data,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() notFound,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, DataSource source)? data,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? notFound,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, DataSource source)? data,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkDataSnapshotData<T> value) data,
    required TResult Function(NetworkDataSnapshotError<T> value) unknownError,
    required TResult Function(NetworkDataSnapshotLoading<T> value) loading,
    required TResult Function(NetworkDataSnapshotNotFound<T> value) notFound,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkDataSnapshotData<T> value)? data,
    TResult? Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult? Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult? Function(NetworkDataSnapshotNotFound<T> value)? notFound,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkDataSnapshotData<T> value)? data,
    TResult Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult Function(NetworkDataSnapshotNotFound<T> value)? notFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NetworkDataSnapshotLoading<T> implements NetworkDataSnapshot<T> {
  const factory NetworkDataSnapshotLoading() = _$NetworkDataSnapshotLoading<T>;
}

/// @nodoc
abstract class _$$NetworkDataSnapshotNotFoundCopyWith<T, $Res> {
  factory _$$NetworkDataSnapshotNotFoundCopyWith(
          _$NetworkDataSnapshotNotFound<T> value,
          $Res Function(_$NetworkDataSnapshotNotFound<T>) then) =
      __$$NetworkDataSnapshotNotFoundCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkDataSnapshotNotFoundCopyWithImpl<T, $Res>
    extends _$NetworkDataSnapshotCopyWithImpl<T, $Res,
        _$NetworkDataSnapshotNotFound<T>>
    implements _$$NetworkDataSnapshotNotFoundCopyWith<T, $Res> {
  __$$NetworkDataSnapshotNotFoundCopyWithImpl(
      _$NetworkDataSnapshotNotFound<T> _value,
      $Res Function(_$NetworkDataSnapshotNotFound<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkDataSnapshotNotFound<T>
    implements NetworkDataSnapshotNotFound<T> {
  const _$NetworkDataSnapshotNotFound();

  @override
  String toString() {
    return 'NetworkDataSnapshot<$T>.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkDataSnapshotNotFound<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, DataSource source) data,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, DataSource source)? data,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, DataSource source)? data,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkDataSnapshotData<T> value) data,
    required TResult Function(NetworkDataSnapshotError<T> value) unknownError,
    required TResult Function(NetworkDataSnapshotLoading<T> value) loading,
    required TResult Function(NetworkDataSnapshotNotFound<T> value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkDataSnapshotData<T> value)? data,
    TResult? Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult? Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult? Function(NetworkDataSnapshotNotFound<T> value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkDataSnapshotData<T> value)? data,
    TResult Function(NetworkDataSnapshotError<T> value)? unknownError,
    TResult Function(NetworkDataSnapshotLoading<T> value)? loading,
    TResult Function(NetworkDataSnapshotNotFound<T> value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NetworkDataSnapshotNotFound<T>
    implements NetworkDataSnapshot<T> {
  const factory NetworkDataSnapshotNotFound() =
      _$NetworkDataSnapshotNotFound<T>;
}
