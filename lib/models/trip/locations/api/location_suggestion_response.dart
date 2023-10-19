import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_suggestion_response.freezed.dart';
part 'location_suggestion_response.g.dart';

@freezed
class LocationSuggestionResponse with _$LocationSuggestionResponse {
  const LocationSuggestionResponse._();

  const factory LocationSuggestionResponse({
    required String id,
    required String name,
  }) = _LocationSuggestionResponse;

  factory LocationSuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationSuggestionResponseFromJson(json);
}
