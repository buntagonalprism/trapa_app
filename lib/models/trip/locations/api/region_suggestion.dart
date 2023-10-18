import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_suggestion.freezed.dart';
part 'region_suggestion.g.dart';

@freezed
class RegionSuggestion with _$RegionSuggestion {
  const RegionSuggestion._();

  const factory RegionSuggestion({
    required String id,
    required String name,
  }) = _RegionSuggestion;

  factory RegionSuggestion.fromJson(Map<String, dynamic> json) => _$RegionSuggestionFromJson(json);
}
