import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'trip_store.g.dart';

@singleton
class TripStore = _TripStore with _$TripStore;

abstract class _TripStore with Store {
  @observable
  int value = 0;
}
