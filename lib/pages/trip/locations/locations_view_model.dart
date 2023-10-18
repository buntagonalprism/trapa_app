import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../models/api/network_observable.dart';
import '../../../models/trip/common/country.dart';
import '../../../models/trip/locations/region.dart';
import '../../../models/trip/trip.dart';
import '../../../stores/location_store.dart';
import '../../../stores/trip_store.dart';

part 'locations_view_model.g.dart';

@injectable
class LocationsViewModel = _LocationsViewModel with _$LocationsViewModel;

abstract class _LocationsViewModel with Store {
  _LocationsViewModel({
    required LocationStore locationStore,
    required TripStore tripStore,
  })  : _locationStore = locationStore,
        _tripStore = tripStore;

  final TripStore _tripStore;
  final LocationStore _locationStore;

  @observable
  Country? selectedCountry;

  @observable
  String? tripId;

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
}
