import 'package:freezed_annotation/freezed_annotation.dart';

import 'date.dart';

part 'date_range.freezed.dart';
part 'date_range.g.dart';

@freezed
class DateRange with _$DateRange {
  const DateRange._();

  const factory DateRange({
    required Date start,
    required Date end,
  }) = _DateRange;

  factory DateRange.fromJson(Map<String, dynamic> json) => _$DateRangeFromJson(json);
}
