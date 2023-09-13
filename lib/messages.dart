import 'package:flutter_gen/gen_l10n/app_messages.dart';

typedef Messages = AppMessages;

/// These are shortcuts that make it quicker to add messages during development without
/// needing to muck around in the ARB file and rerun the code generator.
extension MessagesExtension on AppMessages {
  String get trips => 'Trips';
  String get guidebook => 'Guidebook';
  String get homeNewTrip => 'New Trip';
  String get newTripTitle => 'New Trip';
  String get newTripErrorTripNameMissing => 'Trip name is required';
  String get connectionErrorTitle => 'Connection Error';
  String get connectionErrorBody => 'Please try again';
  String get unknownErrorTitle => 'Unknown Error';
  String get unknownErrorBody => 'An unexpected error has occured. Please contact support';
  String get actionOk => 'Ok';
  String get actionClose => 'Close';
  String get actionCancel => 'Cancel';
  String get actionRetry => 'Retry';
}
