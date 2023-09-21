import 'package:freezed_annotation/freezed_annotation.dart';

import 'time.dart';

part 'time_range.freezed.dart';
part 'time_range.g.dart';

@freezed
class TimeRange with _$TimeRange {
  const TimeRange._();

  const factory TimeRange({
    required Time open,
    required Time close,
  }) = _TimeRange;

  factory TimeRange.fromJson(Map<String, dynamic> json) => _$TimeRangeFromJson(json);
}
