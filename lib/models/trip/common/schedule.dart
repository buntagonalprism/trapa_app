import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class Schedule with _$Schedule {
  /// A schedule that repeats every week on the given days of the week
  const factory Schedule.weekly(List<DayOfWeek> days) = _WeeklySchedule;

  /// A schedule that repeats every month on the given days of the month
  const factory Schedule.monthly(List<int> days) = _MonthlySchedule;

  /// A schedule that repeats every month on certain occurrences of days within a month, e.g. the
  /// first Monday of the month, the third Tuesday of the month
  const factory Schedule.occurrenceInMonth(Map<OccurrenceInMonth, DayOfWeek> days) =
      _OccurrenceInMonthSchedule;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}

typedef OccurrenceInMonth = int;

enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}
