import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../models/trip/trip.dart';
import '../../stores/trip_store.dart';

part 'home_view_model.g.dart';

@injectable
class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel with Store {
  _HomeViewModel({
    required TripStore tripStore,
  }) : _tripStore = tripStore;

  final TripStore _tripStore;

  @computed
  List<Trip> get trips {
    final userTrips = List.of(_tripStore.userTrips);
    userTrips.sort((a, b) => a.startDate.compareTo(b.startDate));
    return userTrips;
  }
}
