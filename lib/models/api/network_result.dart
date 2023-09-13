import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_result.freezed.dart';

/// The result of a network operation
@freezed
class NetworkResult<T> with _$NetworkResult<T> {
  /// The network operation completed successfully
  const factory NetworkResult.success(T value) = NetworkResultSuccess;

  /// The network operation failed with an unknown error. Retrying is unlikely to resolve the
  /// problem. This indicates a possible bug that may need to be fixed.
  const factory NetworkResult.unknownError() = NetworkResultUnknownError;

  /// The network operation failed due to a connection error. A retry may be possible
  const factory NetworkResult.connectionError() = NetworkResultConnectionError;
}

/// The result of a network operation that may have a meaningful error state, e.g. a sign up
/// error due to an account already existing with the same email address
@freezed
class NetworkResultWithError<V, E> with _$NetworkResultWithError<V, E> {
  /// The network operation completed successfully
  const factory NetworkResultWithError.success(V value) = NetworkResultWithErrorSuccess;

  /// The network operation failed with a meaningful error state which may need to be communicated
  /// to the user or otherwise specially handled.
  const factory NetworkResultWithError.error(E error) = NetworkResultWithErrorError;

  /// The network operation failed with an unknown error. Retrying is unlikely to resolve the
  /// problem. This indicates a possible bug that may need to be fixed.
  const factory NetworkResultWithError.unknownError() = NetworkResultWithErrorUnknownError;

  /// The network operation failed due to a connection error. A retry may be possible
  const factory NetworkResultWithError.connectionError() = NetworkResultWithErrorConnectionError;
}
