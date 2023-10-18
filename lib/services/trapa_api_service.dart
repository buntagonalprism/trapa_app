import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../config/config.dart';
import 'auth_service.dart';

@injectable
class TrapaApiService {
  TrapaApiService({
    required Config config,
    required AuthService authService,
  })  : host = config.trapaApiHost,
        _authService = authService;

  final String host;

  final AuthService _authService;

  /// Sent a HTTP PUT request to the provided path. If the server cannot be reached, a
  /// [TrapaApiConnectionException] will be thrown.
  Future<TrapaApiResponse> get(String path, Map<String, String>? queryParams) async {
    Uri uri = Uri.parse('$host/$path');
    final headers = await _buildHeaders();
    uri = uri.replace(queryParameters: queryParams ?? {});
    try {
      final response = await http.get(uri, headers: headers);
      return TrapaApiResponse(
        responseBody: response.body,
        requestUri: uri,
        statusCode: response.statusCode,
      );
    } catch (e, trace) {
      Error.throwWithStackTrace(
        TrapaApiConnectionException(requestPath: path, message: e.toString()),
        trace,
      );
    }
  }

  /// Send a HTTP PUT request to the provided path. If the server cannot be reached, a
  /// [TrapaApiConnectionException] will be thrown.
  Future<TrapaApiResponse> put(String path, dynamic body) async {
    final uri = Uri.parse('$host/$path');
    final headers = await _buildHeaders();
    final bodyJson = json.encode(body);
    try {
      final response = await http.put(uri, body: bodyJson, headers: headers);
      return TrapaApiResponse(
        responseBody: response.body,
        requestUri: uri,
        statusCode: response.statusCode,
      );
    } catch (e, trace) {
      Error.throwWithStackTrace(
        TrapaApiConnectionException(requestPath: path, message: e.toString()),
        trace,
      );
    }
  }

  /// Send a HTTP POST request to the provided path. If the server cannot be reached, a
  /// [TrapaApiConnectionException] will be thrown.
  Future<TrapaApiResponse> post(String path, dynamic body) async {
    final uri = Uri.parse('$host/$path');
    final headers = await _buildHeaders();
    final bodyJson = json.encode(body);
    try {
      final response = await http.post(uri, body: bodyJson, headers: headers);
      return TrapaApiResponse(
        responseBody: response.body,
        requestUri: uri,
        statusCode: response.statusCode,
      );
    } catch (e, trace) {
      Error.throwWithStackTrace(
        TrapaApiConnectionException(requestPath: path, message: e.toString()),
        trace,
      );
    }
  }

  Future<Map<String, String>> _buildHeaders() async {
    final headers = <String, String>{'Content-Type': 'application/json'};
    final token = await _authService.getAuthToken();
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    return headers;
  }
}

/// Container for HTTP responses from the Trapa API server
class TrapaApiResponse {
  TrapaApiResponse({
    required this.responseBody,
    required this.requestUri,
    required this.statusCode,
  });

  final String responseBody;
  final Uri requestUri;
  final int statusCode;

  /// Parse the response body JSON and return the result of type [T]
  /// If the JSON is malformed or cannot be parsed, a [TrapaApiResponseException] will be thrown
  T parseSuccessBody<T>(T Function(Map<String, dynamic> json) jsonParser) {
    if (statusCode != 200) {
      throw TrapaApiResponseException(
        reason: 'Unexpected HTTP response code: $statusCode',
        response: this,
      );
    }

    try {
      return jsonParser(json.decode(responseBody));
    } catch (e, trace) {
      Error.throwWithStackTrace(
        TrapaApiResponseException(
          reason: 'Failed to parse response body with error: ${e.toString()}',
          response: this,
        ),
        trace,
      );
    }
  }

  /// Parse the response body JSON array and return the result as a list of type [T]
  /// If the JSON is malformed or cannot be parsed, a [TrapaApiResponseException] will be thrown
  List<T> parseSuccessBodyList<T>(T Function(Map<String, dynamic> json) jsonParser) {
    if (statusCode != 200) {
      throw TrapaApiResponseException(
        reason: 'Unexpected HTTP response code: $statusCode',
        response: this,
      );
    }

    try {
      Iterable jsonList = json.decode(responseBody);
      return jsonList.map((j) => jsonParser(j)).toList();
    } catch (e, trace) {
      Error.throwWithStackTrace(
        TrapaApiResponseException(
          reason: 'Failed to parse response body with error: ${e.toString()}',
          response: this,
        ),
        trace,
      );
    }
  }

  @override
  String toString() =>
      'TrapaApiResponse(responseBody: $responseBody, requestUri: $requestUri, statusCode: $statusCode)';
}

/// Thrown when the Trapa API server cannot be reached
class TrapaApiConnectionException implements Exception {
  TrapaApiConnectionException({
    required this.requestPath,
    required this.message,
  });

  final String requestPath;
  final String message;

  @override
  String toString() => 'TrapaApiConnectionException(requestPath: $requestPath, message: $message)';
}

/// Thrown when the Trapa API server returns a non-200 status code or a malformed JSON response body
class TrapaApiResponseException implements Exception {
  TrapaApiResponseException({
    required this.reason,
    required this.response,
  });

  final String reason;
  final TrapaApiResponse response;

  @override
  String toString() => 'TrapaApiResponseException(reason: $reason, response: $response)';
}
