import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/address.dart';
import '../common/coordinates.dart';
import '../common/details.dart';
import '../locations/location.dart';
import 'accommodation_type.dart';
import 'price_rating.dart';

part 'accommodation.freezed.dart';
part 'accommodation.g.dart';

@freezed
class Accommodation with _$Accommodation {
  const Accommodation._();

  const factory Accommodation({
    required String name,
    required Location region,
    Details? details,
    Address? address,
    Coordinates? coordinates,
    double? rating,
    PriceRating? price,
    AccommodationType? type,
  }) = _Accommodation;

  factory Accommodation.fromJson(Map<String, dynamic> json) => _$AccommodationFromJson(json);
}
