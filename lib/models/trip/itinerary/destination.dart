import 'package:freezed_annotation/freezed_annotation.dart';

import '../locations/region.dart';
import 'activity.dart';
import 'day_trip.dart';
import 'reservation.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';

@freezed
class Destination with _$Destination {
  const Destination._();

  const factory Destination({
    required Region region,
    required DateTime arrivalDate,
    required DateTime departureDate,
    required List<Reservation> reservations,
    required List<Activity> activities,
    required List<DayTrip> dayTrips,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);
}
