import 'package:freezed_annotation/freezed_annotation.dart';

import '../budget/ongoing_expense.dart';
import '../locations/location.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';

@freezed
class Tour with _$Tour {
  const Tour._();

  const factory Tour({
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    OngoingExpense? cost,
    List<Location>? regionsVisited,
    Location? departureRegion,
    Location? destinationRegion,
    DateTime? departureTime,
    DateTime? arrivalTime,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}
