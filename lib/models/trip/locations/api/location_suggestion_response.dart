import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_suggestion_response.freezed.dart';
part 'location_suggestion_response.g.dart';

@freezed
class LocationSuggestion with _$LocationSuggestion {
  const LocationSuggestion._();

  const factory LocationSuggestion({
    required String id,
    required String name,
  }) = _RegionSuggestion;

  factory LocationSuggestion.fromJson(Map<String, dynamic> json) =>
      _$LocationSuggestionFromJson(json);
}
