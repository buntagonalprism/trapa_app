import 'package:freezed_annotation/freezed_annotation.dart';

import '../locations/location.dart';

part 'day_trip.freezed.dart';
part 'day_trip.g.dart';

@freezed
class DayTrip with _$DayTrip {
  const DayTrip._();

  const factory DayTrip({
    required Location baseRegion,
    required Location targetRegion,
    required DateTime date,
  }) = _DayTrip;

  factory DayTrip.fromJson(Map<String, dynamic> json) => _$DayTripFromJson(json);
}
