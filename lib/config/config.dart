import 'package:injectable/injectable.dart';

@singleton
class Config {
  final String appNamePrefix = const String.fromEnvironment('appNamePrefix');
  final String googleClientId = const String.fromEnvironment('googleClientId');
  final String trapaApiHost = const String.fromEnvironment('trapaApiHost');
}
