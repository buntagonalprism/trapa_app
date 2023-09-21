import 'package:freezed_annotation/freezed_annotation.dart';

import 'day_of_week.dart';

part 'open_days_schedule.freezed.dart';
part 'open_days_schedule.g.dart';

@freezed
class OpenDaysSchedule with _$OpenDaysSchedule {
  /// A schedule that repeats every week on the given days of the week
  const factory OpenDaysSchedule.weekly(List<DayOfWeek> days) = _WeeklySchedule;

  /// A schedule that repeats every month on the given days of the month
  const factory OpenDaysSchedule.monthly(List<int> days) = _MonthlySchedule;

  /// A schedule that repeats every month on certain occurrences of days within a month, e.g. the
  /// first Monday of the month, the third Tuesday of the month
  const factory OpenDaysSchedule.occurrencesInMonth(List<OccurrenceInMonth> days) =
      _OccurrenceInMonthSchedule;

  factory OpenDaysSchedule.fromJson(Map<String, dynamic> json) => _$OpenDaysScheduleFromJson(json);

  factory OpenDaysSchedule.weekdays() => const OpenDaysSchedule.weekly([
        DayOfWeek.monday,
        DayOfWeek.tuesday,
        DayOfWeek.wednesday,
        DayOfWeek.thursday,
        DayOfWeek.friday,
      ]);

  factory OpenDaysSchedule.weekends() => const OpenDaysSchedule.weekly([
        DayOfWeek.saturday,
        DayOfWeek.sunday,
      ]);
}

@freezed
class OccurrenceInMonth with _$OccurrenceInMonth {
  const OccurrenceInMonth._();

  const factory OccurrenceInMonth({
    required int occurence,
    required DayOfWeek dayOfWeek,
  }) = _OccurrenceInMonth;

  factory OccurrenceInMonth.fromJson(Map<String, dynamic> json) =>
      _$OccurrenceInMonthFromJson(json);
}
