import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/coordinates.dart';
import '../common/details.dart';
import '../common/schedule.dart';
import '../locations/region.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const Event._();

  const factory Event({
    required String name,
    required Region region,
    required DateTime startDate,
    required DateTime endDate,
    Details? details,
    Coordinates? coordinates,
    Schedule? schedule,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
