import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'trip_view_model.g.dart';

@injectable
class TripViewModel = _TripViewModel with _$TripViewModel;

abstract class _TripViewModel with Store {
  @observable
  String tripId = '';

  @action
  void setTripId(String id) {
    tripId = id;
  }
}
