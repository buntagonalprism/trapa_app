import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operations.freezed.dart';

/// An error from an asynchronous operation.
///
/// The error is displayed in a dialog with a title and a body. If the error is [retryable]
/// then the dialog also has a retry button to re-run the operation.
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
