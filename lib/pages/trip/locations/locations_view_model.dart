import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../models/api/network_observable.dart';
import '../../../models/operations.dart';
import '../../../models/trip/common/country.dart';
import '../../../models/trip/locations/api/location_details_response.dart';
import '../../../models/trip/locations/api/location_suggestion_response.dart';
import '../../../models/trip/locations/location.dart';
import '../../../models/trip/trip.dart';
import '../../../services/crash_report_service.dart';
import '../../../services/trapa_api_service.dart';
import '../../../stores/location_store.dart';
import '../../../stores/trip_store.dart';

part 'locations_view_model.g.dart';

@injectable
class LocationsViewModel = _LocationsViewModel with _$LocationsViewModel;

abstract class _LocationsViewModel with Store {
  _LocationsViewModel({
    required LocationStore locationStore,
    required TripStore tripStore,
    required TrapaApiService apiService,
    required CrashReportService crashReporter,
  })  : _locationStore = locationStore,
        _crashReporter = crashReporter,
        _tripStore = tripStore,
        _apiService = apiService;

  final TripStore _tripStore;
  final LocationStore _locationStore;
  final TrapaApiService _apiService;
  final CrashReportService _crashReporter;

  static const String locationsAutocompleteApiPath = '/v1/locations/search';

  static const String locationsDetailApiPath = '/v1/locations';

  @observable
  Country? selectedCountry;

  @observable
  String? tripId;

  @observable
  String? locationSearchQuery;

  @observable
  Location? hoveredLocation;

  @action
  void setHoveredLocation(Location? location) {
    hoveredLocation = location;
  }

  @action
  void selectCountry(Country country) {
    selectedCountry = country;
  }

  @action
  void setTripId(String id) {
    tripId = id;
    tripObservable = _tripStore.getTrip(id);
    locationsObservable = _locationStore.getTripLocations(id);
  }

  @observable
  NetworkObservable<Trip> tripObservable = loadingNetworkObservable<Trip>();

  @observable
  NetworkObservable<List<Location>> locationsObservable =
      loadingNetworkObservable<List<Location>>();

  @computed
  List<Location> get locationsInCountry {
    final locations = locationsObservable.dataOrNull() ?? [];
    return locations.where((location) => location.countryCode == selectedCountry?.code).toList();
  }

  void setTripCountries(List<Country> countries) {
    final trip = tripObservable.dataOrNull()!;
    _tripStore.setTripCountries(trip, countries);
  }

  @action
  void setLocationSearchQuery(String query) {
    locationSearchQuery = query;
    if (query.isNotEmpty) {
      _searchResultsFuture = ObservableFuture(_searchSuggestions(query));
    } else {
      _searchResultsFuture = null;
    }
  }

  @observable
  ObservableFuture<List<LocationSuggestionResponse>>? _searchResultsFuture;

  @computed
  OperationState<List<LocationSuggestionResponse>> get searchResults {
    if (_searchResultsFuture == null) {
      return const OperationState.pending();
    }

    if (_searchResultsFuture!.status == FutureStatus.pending) {
      return const OperationState.inProgress();
    }

    if (_searchResultsFuture!.error != null) {
      return const OperationState.result(OperationResult.error(LocationSearchError()));
    }

    return OperationState.result(OperationResult.success(_searchResultsFuture!.result));
  }

  Future<List<LocationSuggestionResponse>> _searchSuggestions(String query) async {
    try {
      final response = await _apiService.get(
        locationsAutocompleteApiPath,
        {
          'query': locationSearchQuery!,
          'country': selectedCountry!.code,
        },
      );
      final results = response.parseSuccessBodyList(LocationSuggestionResponse.fromJson);
      return results;
    } catch (e, t) {
      _crashReporter.report(e, t);
      rethrow;
    }
  }

  Future<OperationResult<LocationDetailsResponse>> getLocationFromSuggestion(
      LocationSuggestionResponse suggestion) async {
    try {
      final response = await _apiService.get('$locationsDetailApiPath/${suggestion.id}');
      final locationResponse = response.parseSuccessBody(LocationDetailsResponse.fromJson);

      return OperationResult.success(locationResponse);
    } catch (e, t) {
      _crashReporter.report(e, t);
      return const OperationResult.error(AddLocationError());
    }
  }

  void addLocation(Location location) {
    _locationStore.addLocation(location, tripId!);
  }

  void updateLocation(Location location) {
    _locationStore.updateLocation(location, tripId!);
  }

  void deleteLocation(Location location) {
    _locationStore.deleteLocation(location, tripId!);
  }
}

class LocationSearchError implements OperationError {
  const LocationSearchError();

  @override
  final bool retryable = false;

  @override
  String titleText(BuildContext context) => "Search failed";

  @override
  String bodyText(BuildContext context) => "Please try again";
}

class AddLocationError implements OperationError {
  const AddLocationError();

  @override
  final bool retryable = false;

  @override
  String titleText(BuildContext context) => "Failed to add location";

  @override
  String bodyText(BuildContext context) => "Please try again";
}
