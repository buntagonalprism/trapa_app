import 'package:freezed_annotation/freezed_annotation.dart';

import '../guidebook/attraction.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
class Activity with _$Activity {
  const Activity._();

  const factory Activity({
    required Attraction attraction,
    required DateTime date,
    DateTime? startTime,
    DateTime? endTime,
    bool? isAllDay,
    bool? confirmed,
    bool? paid,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}
