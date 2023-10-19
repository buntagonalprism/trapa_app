import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/coordinates.dart';
import '../common/details.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const Location._();

  const factory Location({
    required String name,
    required Location? parentLocation,
    required String countryCode,
    required Coordinates coordinates,
    Details? details,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
