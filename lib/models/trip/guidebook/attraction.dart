import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/coordinates.dart';
import '../common/details.dart';
import '../locations/region.dart';
import 'attraction_type.dart';
import 'interest_rating.dart';
import 'price_rating.dart';

part 'attraction.freezed.dart';
part 'attraction.g.dart';

@freezed
class Attraction with _$Attraction {
  const Attraction._();

  const factory Attraction({
    required String name,
    required Region region,
    Details? details,
    Coordinates? coordinates,
    PriceRating? priceRating,
    InterestRating? interestRating,
    AttractionType? type,
  }) = _Attraction;

  factory Attraction.fromJson(Map<String, dynamic> json) => _$AttractionFromJson(json);
}
