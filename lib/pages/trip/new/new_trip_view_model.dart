import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'new_trip_view_model.g.dart';

@injectable
class NewTripViewModel = _NewTripViewModel with _$NewTripViewModel;

abstract class _NewTripViewModel with Store {
  @observable
  int value = 0;
}
