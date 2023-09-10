import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class CrashReportService {
  void report(dynamic error, StackTrace stackTrace) {
    if (kDebugMode) {
      print(error);
      print(stackTrace);
    }
  }
}
