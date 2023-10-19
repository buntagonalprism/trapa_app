import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/coordinates.dart';
import '../common/date_range.dart';
import '../common/day_of_week.dart';
import '../common/details.dart';
import '../common/open_days_schedule.dart';
import '../common/time_range.dart';
import '../locations/location.dart';
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
    required Location region,
    Details? details,
    Coordinates? coordinates,
    PriceRating? priceRating,
    InterestRating? interestRating,
    AttractionType? type,
    DateRange? openDateRange,
    OpenDaysSchedule? openDays,
    Map<DayOfWeek, List<TimeRange>>? openingHours,
  }) = _Attraction;

  factory Attraction.fromJson(Map<String, dynamic> json) => _$AttractionFromJson(json);
}
