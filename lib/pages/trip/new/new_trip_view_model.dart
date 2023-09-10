import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../stores/trip_store.dart';

part 'new_trip_view_model.g.dart';

@injectable
class NewTripViewModel = _NewTripViewModel with _$NewTripViewModel;

abstract class _NewTripViewModel with Store {
  _NewTripViewModel({
    required this.tripStore,
  });

  final TripStore tripStore;

  @observable
  int value = 0;
}
