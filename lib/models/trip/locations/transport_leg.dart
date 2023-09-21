import 'package:freezed_annotation/freezed_annotation.dart';

import '../budget/expense.dart';
import '../common/address.dart';
import '../common/coordinates.dart';
import '../itinerary/transport_type.dart';
import 'region.dart';

part 'transport_leg.freezed.dart';
part 'transport_leg.g.dart';

typedef TransportOption = List<TransportLeg>;

@freezed
class TransportLeg with _$TransportLeg {
  const TransportLeg._();

  const factory TransportLeg({
    required DateTime departureTime,
    required DateTime arrivalTime,
    required TransportType type,
    required Region departure,
    required Region arrival,
    Coordinates? departureLocation,
    Address? depatureAddress,
    Coordinates? arrivalLocation,
    Address? arrivalAddress,
    Expense? cost,
  }) = _TransportLeg;

  factory TransportLeg.fromJson(Map<String, dynamic> json) => _$TransportLegFromJson(json);
}
