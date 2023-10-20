import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../models/api/network_observable.dart';
import '../models/trip/locations/location.dart';
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

  static const String locationsFirestoreCollection = 'locations';

  ObservableValue<NetworkDataSnapshot<List<Location>>> getTripLocations(String tripId) {
    return _firestoreService.collectionSnapshots<Location>(
      path: '$tripsFirestoreCollection/$tripId/$locationsFirestoreCollection',
      fromJson: Location.fromJson,
    );
  }

  Future<void> addLocation(Location location, String tripId) {
    return _firestoreService.addDocument(
      collectionPath: '$tripsFirestoreCollection/$tripId/$locationsFirestoreCollection',
      data: location,
    );
  }

  Future<void> updateLocation(Location location, String tripId) {
    return _firestoreService.updateDocument(
      path: '$tripsFirestoreCollection/$tripId/$locationsFirestoreCollection/${location.id}',
      data: location,
    );
  }

  Future<void> deleteLocation(Location location, String tripId) {
    return _firestoreService.deleteDocument(
      path: '$tripsFirestoreCollection/$tripId/$locationsFirestoreCollection/${location.id}',
    );
  }
}
