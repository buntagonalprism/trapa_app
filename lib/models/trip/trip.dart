import 'package:freezed_annotation/freezed_annotation.dart';

import '../json_converters.dart';
import 'trip_user_role.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip {
  const Trip._();

  const factory Trip({
    required String id,
    required String name,
    @DateConverter() required DateTime startDate,
    @DateConverter() required DateTime endDate,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}
