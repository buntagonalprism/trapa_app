import 'package:country_picker/country_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../models/api/network_observable.dart';
import '../models/api/network_result.dart';
import '../models/json_converters.dart';
import '../models/trip/api/create_trip_request.dart';
import '../models/trip/trip.dart';
import '../services/auth_service.dart';
import '../services/crash_report_service.dart';
import '../services/firestore_service.dart';
import '../services/trapa_api_service.dart';

part 'trip_store.g.dart';

@singleton
class TripStore = _TripStore with _$TripStore;

abstract class _TripStore with Store {
  _TripStore({
    required this.apiService,
    required this.crashReporter,
    required this.firestoreService,
    required this.authService,
  });

  final TrapaApiService apiService;
  final CrashReportService crashReporter;
  final FirestoreService firestoreService;
  final AuthService authService;

  static const tripsApiPath = 'v1/trips';

  static const tripsFirestoreCollection = 'trips';

  @computed
  NetworkObservable<List<Trip>>? get _userTripsObservable {
    final user = authService.user;
    if (user == null) {
      return null;
    }
    return firestoreService.collectionSnapshots<Trip>(
      path: tripsFirestoreCollection,
      fromJson: Trip.fromJson,
      fieldQueries: [
        FirestoreFieldQuery(
          fieldName: 'editors',
          fieldValue: user.id,
          operator: FirestoreQueryOperator.arrayContains,
        ),
      ],
    );
  }

  @computed
  List<Trip> get userTrips => _userTripsObservable?.valueOrNull() ?? [];

  Future<NetworkResult<Trip>> createTrip({
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required Country? singleCountry,
  }) async {
    try {
      final response = await apiService.put(
        tripsApiPath,
        CreateTripRequest(
          name: name,
          startDate: DateConverter.dateFormat.format(startDate),
          endDate: DateConverter.dateFormat.format(endDate),
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

  ObservableValue<NetworkDataSnapshot<Trip>> getTrip(String tripId) {
    return firestoreService.documentSnapshots<Trip>(
      path: '$tripsFirestoreCollection/$tripId',
      fromJson: Trip.fromJson,
    );
  }
}
