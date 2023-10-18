import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../models/api/network_observable.dart';
import '../../../models/operations.dart';
import '../../../models/trip/common/country.dart';
import '../../../models/trip/locations/api/region_suggestion.dart';
import '../../../models/trip/locations/region.dart';
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

  static const String placeAutocompletePath = '/v1/locations/search';

  @observable
  Country? selectedCountry;

  @observable
  String? tripId;

  @observable
  String? locationSearchQuery;

  @action
  void selectCountry(Country country) {
    selectedCountry = country;
  }

  @action
  void setTripId(String id) {
    tripId = id;
    tripObservable = _tripStore.getTrip(id);
    regionObservable = _locationStore.getTripRegions(id);
  }

  @observable
  NetworkObservable<Trip> tripObservable = loadingNetworkObservable<Trip>();

  @observable
  NetworkObservable<List<Region>> regionObservable = loadingNetworkObservable<List<Region>>();

  @computed
  List<Region> get regionsInCountry {
    final regions = regionObservable.dataOrNull() ?? [];
    return regions.where((region) => region.countryCode == selectedCountry?.code).toList();
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
  ObservableFuture<List<RegionSuggestion>>? _searchResultsFuture;

  @computed
  OperationState<List<RegionSuggestion>> get searchResults {
    if (_searchResultsFuture == null) {
      return const OperationState.pending();
    }

    if (_searchResultsFuture!.status == FutureStatus.pending) {
      return const OperationState.inProgress();
    }

    if (_searchResultsFuture!.error != null) {
      return const OperationState.result(OperationResult.error(RegionSearchError()));
    }

    return OperationState.result(OperationResult.success(_searchResultsFuture!.result));
  }

  Future<List<RegionSuggestion>> _searchSuggestions(String query) async {
    try {
      final response = await _apiService.get(
        placeAutocompletePath,
        {
          'query': locationSearchQuery!,
          'country': selectedCountry!.code,
        },
      );
      final results = response.parseSuccessBodyList(RegionSuggestion.fromJson);
      return results;
    } catch (e, t) {
      _crashReporter.report(e, t);
      rethrow;
    }
  }
}

class RegionSearchError implements OperationError {
  const RegionSearchError();

  @override
  final bool retryable = false;

  @override
  String titleText(BuildContext context) => "Search failed";

  @override
  String bodyText(BuildContext context) => "Please try again";
}
