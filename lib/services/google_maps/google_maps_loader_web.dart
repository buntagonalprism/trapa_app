// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:async';
import 'dart:html' as html;

import 'package:js/js.dart';

bool _hasRequestedInit = false;
final _initCompleter = Completer<void>();

const _mapsApiKey = String.fromEnvironment('googleMapsApiKey');
const _mapsLoaderScriptId = 'google-maps-js-loader';

Future<void> initGoogleMaps() {
  if (_hasRequestedInit || html.document.getElementById(_mapsLoaderScriptId) != null) {
    return Future.value();
  }
  _hasRequestedInit = true;

  onMapsInit = allowInterop(_onMapsInit);

  html.document.head!.append(html.ScriptElement()
    ..src = 'https://maps.googleapis.com/maps/api/js?key=$_mapsApiKey&callback=onMapsInit'
    ..id = _mapsLoaderScriptId
    ..async = true
    ..defer = true);
  return _initCompleter.future;
}

void _onMapsInit() {
  _initCompleter.complete();
}

@JS('onMapsInit')
external set onMapsInit(void Function() f);
