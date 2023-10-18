import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../models/api/network_observable.dart';
import '../models/trip/locations/region.dart';
import '../services/firestore_service.dart';
import 'trip_store.dart';

part 'location_store.g.dart';

@injectable
class LocationStore = _LocationStore with _$LocationStore;

abstract class _LocationStore with Store {
  _LocationStore({
    required FirestoreService firestoreService,
  }) : _firestoreService = firestoreService;

  final FirestoreService _firestoreService;

  ObservableValue<NetworkDataSnapshot<List<Region>>> getTripRegions(String tripId) {
    return _firestoreService.collectionSnapshots<Region>(
      path: '$tripsFirestoreCollection/$tripId/regions',
      fromJson: Region.fromJson,
    );
  }
}
