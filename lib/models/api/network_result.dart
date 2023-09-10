import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_result.freezed.dart';

@freezed
class NetworkResult<T> with _$NetworkResult<T> {
  /// The result of a successful network operation
  const factory NetworkResult.success(T value) = NetworkResultSuccess;

  /// The result of a failed network operation with a display message which can be shown to the user
  const factory NetworkResult.error(String displayMessage) = NetworkResultError;

  /// The result of a failed network operation with no display message. This indicates a possible
  /// bug that needs to be fixed.
  const factory NetworkResult.unknownError() = NetworkResultUnknownError;

  /// The result of a failed network operation due to a connection error. A retry may be possible
  const factory NetworkResult.connectionError() = NetworkResultConnectionError;
}
