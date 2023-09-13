import 'package:country_picker/country_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

import '../models/api/network_result.dart';
import '../models/trip/api/create_trip_request.dart';
import '../models/trip/trip.dart';
import '../services/crash_report_service.dart';
import '../services/trapa_api_service.dart';

part 'trip_store.g.dart';

@singleton
class TripStore = _TripStore with _$TripStore;

abstract class _TripStore with Store {
  _TripStore({
    required this.apiService,
    required this.crashReporter,
  });

  final TrapaApiService apiService;
  final CrashReportService crashReporter;

  static const tripsPath = 'v1/trips';

  static String tripPath(String id) => '$tripsPath/$id';

  final dateFormat = DateFormat('yyyy-MM-dd');

  Future<NetworkResult<Trip>> createTrip({
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required Country? singleCountry,
  }) async {
    try {
      final response = await apiService.put(
        tripsPath,
        CreateTripRequest(
          name: name,
          startDate: dateFormat.format(startDate),
          endDate: dateFormat.format(endDate),
          singleCountryCode: singleCountry?.countryCode,
        ),
      );
      final trip = response.parseSuccessBody(Trip.fromJson);
      return NetworkResult.success(trip);
    } on TrapaApiConnectionException catch (e, t) {
      crashReporter.report(e, t);
      return const NetworkResult.connectionError();
    } on TrapaApiResponseException catch (e, t) {
      crashReporter.report(e, t);
      return const NetworkResult.unknownError();
    }
  }
}
