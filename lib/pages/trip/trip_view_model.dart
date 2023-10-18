import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../injection.dart';
import '../../models/api/network_observable.dart';
import '../../models/trip/trip.dart';
import '../../stores/trip_store.dart';
import 'locations/locations_view_model.dart';

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
    if (id != tripId) {
      tripId = id;
      tripObservable = _tripStore.getTrip(tripId);
      tabViewModels = TripTabViewModels(tripId: id);
    }
  }

  @observable
  NetworkObservable<Trip> tripObservable = loadingNetworkObservable<Trip>();

  @observable
  TripTabViewModels? tabViewModels;
}

class TripTabViewModels {
  TripTabViewModels({required this.tripId});

  final String tripId;

  late final LocationsViewModel tripViewModel = getIt<LocationsViewModel>()..setTripId(tripId);
}
