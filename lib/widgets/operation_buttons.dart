import 'package:flutter/material.dart';

import '../messages.dart';
import '../models/operations.dart';

class FilledOperationButton<T> extends StatefulWidget {
  const FilledOperationButton({
    required this.onPressed,
    required this.onSuccess,
    required this.child,
    required this.inProgressChild,
    super.key,
  });

  final Future<OperationResult<T>>? Function() onPressed;
  final Function(T value) onSuccess;
  final Widget child;
  final Widget inProgressChild;

  @override
  State<FilledOperationButton<T>> createState() => _FilledOperationButtonState<T>();
}

class _FilledOperationButtonState<T> extends State<FilledOperationButton<T>> {
  bool operationInProgress = false;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: operationInProgress ? null : runOperation,
      child: operationInProgress ? widget.inProgressChild : widget.child,
    );
  }

  void runOperation() async {
    final operation = widget.onPressed();
    if (operation == null) {
      return;
    }
    setState(() => operationInProgress = true);
    final result = await operation;
    setState(() => operationInProgress = false);
    result.when(
      success: (value) => widget.onSuccess(value),
      error: (error) => showErrorDialog(error),
    );
  }

  void showErrorDialog(OperationError error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(error.titleText(context)),
        content: Text(error.bodyText(context)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(error.retryable
                ? Messages.of(context)!.actionClose
                : Messages.of(context)!.actionOk),
          ),
          if (error.retryable)
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                runOperation();
              },
              child: Text(Messages.of(context)!.actionRetry),
            ),
        ],
      ),
    );
  }
}
