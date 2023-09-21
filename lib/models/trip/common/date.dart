import 'package:freezed_annotation/freezed_annotation.dart';

part 'date.freezed.dart';
part 'date.g.dart';

@freezed
class Date with _$Date {
  const Date._();

  const factory Date({
    required int year,
    required int month,
    required int day,
  }) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  DateTime toDateTime() => DateTime(year, month, day);
}
