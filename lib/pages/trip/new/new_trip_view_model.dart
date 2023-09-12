import 'package:country_picker/country_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../messages.dart';
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
  String tripName = '';

  @observable
  DateTime? startDate;

  @observable
  DateTime? endDate;

  @observable
  TripCountries tripCountries = TripCountries.notSelected;

  @observable
  String? singleCountryCode;

  @computed
  Country? get country => singleCountryCode != null ? Country.parse(singleCountryCode!) : null;

  @action
  void setTripName(String newTripName) => tripName = newTripName;

  @action
  void setStartDate(DateTime newStartDate) => startDate = newStartDate;

  @action
  void setEndDate(DateTime newEndDate) => endDate = newEndDate;

  @action
  void setTripCountries(TripCountries newTripCountries) => tripCountries = newTripCountries;

  @action
  void setSingleCountry(String? contryCode) => singleCountryCode = contryCode;

  @computed
  int get tripDuration => endDate?.difference(startDate ?? endDate ?? DateTime.now()).inDays ?? 0;

  @observable
  bool showErrors = false;

  @computed
  NewTripFieldError? get tripNameError =>
      tripName.isEmpty ? NewTripFieldError.tripNameMissing : null;

  @computed
  NewTripFieldError? get startDateError =>
      startDate == null ? NewTripFieldError.startDateMissing : null;

  @computed
  NewTripFieldError? get endDateError {
    if (endDate == null) {
      return NewTripFieldError.endDateMissing;
    }
    if (startDate != null && endDate!.isBefore(startDate!)) {
      return NewTripFieldError.endDateBeforeStartDate;
    }
    return null;
  }

  @computed
  NewTripFieldError? get tripCountriesError => tripCountries == TripCountries.notSelected
      ? NewTripFieldError.tripCountriesNotSelected
      : null;

  @computed
  NewTripFieldError? get singleCountryError =>
      tripCountries == TripCountries.single && singleCountryCode == null
          ? NewTripFieldError.singleCountryNotSelected
          : null;

  @computed
  List<NewTripFieldError?> get allErrors => [
        tripNameError,
        startDateError,
        endDateError,
        tripCountriesError,
        singleCountryError,
      ];

  @computed
  bool get isValid => allErrors.every((error) => error == null);

  @action
  void createTrip() {
    showErrors = true;
  }
}

enum NewTripFieldError {
  tripNameMissing,
  startDateMissing,
  endDateMissing,
  endDateBeforeStartDate,
  tripCountriesNotSelected,
  singleCountryNotSelected;

  const NewTripFieldError();

  String? message(NewTripViewModel vm, BuildContext context) {
    if (!vm.showErrors) {
      return null;
    }
    final messages = Messages.of(context)!;
    return switch (this) {
      tripNameMissing => messages.newTripErrorTripNameMissing,
      startDateMissing => 'Start date is required',
      endDateMissing => 'End date is required',
      endDateBeforeStartDate => 'End date must be after start date',
      tripCountriesNotSelected => 'Please make a selection',
      singleCountryNotSelected => 'Please select a country'
    };
  }
}

enum TripCountries {
  notSelected,
  single,
  multiple,
}
