import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../models/api/network_observable.dart';
import '../../models/trip/common/country.dart';
import '../../models/trip/trip.dart';
import '../../stores/trip_store.dart';

part 'trip_view_model.g.dart';

@injectable
class TripViewModel = _TripViewModel with _$TripViewModel;

abstract class _TripViewModel with Store {
  _TripViewModel({
    required TripStore tripStore,
  }) : _tripStore = tripStore;

  final TripStore _tripStore;

  @observable
  String tripId = '';

  @action
  void setTripId(String id) {
    tripId = id;
    tripObservable = _tripStore.getTrip(tripId);
  }

  @observable
  NetworkObservable<Trip> tripObservable = loadingNetworkObservable<Trip>();

  void setTripCountries(List<Country> countries) {
    final trip = tripObservable.dataOrNull()!;
    _tripStore.setTripCountries(trip, countries);
  }
}
