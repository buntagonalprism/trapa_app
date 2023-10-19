import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_suggestion_response.dart';

part 'location_details_response.freezed.dart';
part 'location_details_response.g.dart';

@freezed
class LocationDetailsResponse with _$LocationDetailsResponse {
  const LocationDetailsResponse._();

  const factory LocationDetailsResponse({
    required LocationSuggestionResponse place,
    required CoordinatesResposne coordinates,
    required String website,
    required int id,
  }) = _LocationDetailsResponse;

  factory LocationDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsResponseFromJson(json);
}

@freezed
class CoordinatesResposne with _$CoordinatesResposne {
  const CoordinatesResposne._();

  const factory CoordinatesResposne({
    required double latitude,
    required double longitude,
  }) = _CoordinatesResposne;

  factory CoordinatesResposne.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesResposneFromJson(json);
}
