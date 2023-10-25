// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:async';
import 'dart:html' as html;

import 'package:js/js.dart';

bool _hasRequestedInit = false;
final _initCompleter = Completer<void>();

Future<void> initGoogleMaps() {
  if (_hasRequestedInit) {
    return Future.value();
  }
  _hasRequestedInit = true;

  onMapsInit = allowInterop(_onMapsInit);
  html.document.dispatchEvent(html.CustomEvent("google-maps-api-key-loaded",
      detail: const String.fromEnvironment('googleMapsApiKey')));
  return _initCompleter.future;
}

void _onMapsInit() {
  _initCompleter.complete();
}

@JS('onMapsInit')
external set onMapsInit(void Function() f);
