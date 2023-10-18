import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operations.freezed.dart';

/// A user-friendly description of an error from an asynchronous operation.
///
/// Implement this class to provide custom error messages for your operations. For example:
///
/// ```dart
/// enum LoginError implements OperationError {
///   emailExists(retryable: false),
///   networkError(retryable: true),
///   unknownError(retryable: false);
///
///   const LoginError({required this.retryable});
///
///   @override
///   final bool retryable;
///
///   @override
///   String titleText(BuildContext context) {
///     final messages = Messages.of(context)!;
///     return switch (this) {
///       emailExists => messages.emailExistsErrorTitle,
///       networkError => messages.connectionErrorTitle,
///       unknownError => messages.unknownErrorTitle,
///     };
///   }
///
///   @override
///   String bodyText(BuildContext context) {
///     final messages = Messages.of(context)!;
///     return switch (this) {
///       emailExists => messages.emailExistsErrorBody,
///       networkError => messages.connectionErrorBody,
///       unknownError => messages.unknownErrorBody,
///     };
///   }
/// }
/// ```
abstract class OperationError {
  bool get retryable;
  String titleText(BuildContext context);
  String bodyText(BuildContext context);
}

/// The result from an an asynchronous operation.
@freezed
class OperationResult<T> with _$OperationResult<T> {
  const factory OperationResult.success(T value) = OperationResultSuccess;

  const factory OperationResult.error(OperationError error) = OperationResultError;
}

/// The state of an asynchronous operation.
@freezed
class OperationState<T> with _$OperationState<T> {
  /// The operation has not started
  const factory OperationState.pending() = OperationStatePending;

  /// The operation is in progress
  const factory OperationState.inProgress() = OperationStateInProgress;

  /// The operation has completed with a result
  const factory OperationState.result(OperationResult<T> result) = OperationStateResult;
}
