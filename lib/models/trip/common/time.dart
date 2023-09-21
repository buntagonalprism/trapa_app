import 'package:freezed_annotation/freezed_annotation.dart';

part 'time.freezed.dart';
part 'time.g.dart';

@freezed
class Time with _$Time {
  const Time._();

  const factory Time({
    required int hour,
    required int minute,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}
