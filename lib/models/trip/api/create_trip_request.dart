import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_trip_request.freezed.dart';
part 'create_trip_request.g.dart';

@freezed
class CreateTripRequest with _$CreateTripRequest {
  const CreateTripRequest._();

  const factory CreateTripRequest({
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required bool singleCountry,
  }) = _CreateTripRequest;

  factory CreateTripRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTripRequestFromJson(json);
}
