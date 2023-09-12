import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:trapa_app/pages/trip/new/new_trip_view_model.dart';
import 'package:trapa_app/stores/trip_store.dart';

class MockTripStore extends Mock implements TripStore {}

void main() {
  late MockTripStore tripStore;
  late NewTripViewModel newTripViewModel;

  setUp(() {
    tripStore = MockTripStore();
    newTripViewModel = NewTripViewModel(tripStore: tripStore);
  });

  test(
      'GIVEN trip name not set '
      'THEN trip name error is present', () {
    newTripViewModel.setTripName('');
    expect(newTripViewModel.tripNameError, NewTripFieldError.tripNameMissing);
    expect(newTripViewModel.allErrors, contains(NewTripFieldError.tripNameMissing));
  });

  test(
      'GIVEN start date is not set '
      'THEN start date error is present', () {
    expect(newTripViewModel.startDateError, NewTripFieldError.startDateMissing);
    expect(newTripViewModel.allErrors, contains(NewTripFieldError.startDateMissing));
  });

  test(
      'GIVEN end date is not set '
      'THEN end date error is present', () {
    expect(newTripViewModel.endDateError, NewTripFieldError.endDateMissing);
    expect(newTripViewModel.allErrors, contains(NewTripFieldError.endDateMissing));
  });

  test(
      'GIVEN start date is set '
      'AND end date is set as before start date '
      'THEN end date error is present', () {
    newTripViewModel.setStartDate(DateTime.now());
    newTripViewModel.setEndDate(DateTime.now().subtract(const Duration(days: 1)));
    expect(newTripViewModel.endDateError, NewTripFieldError.endDateBeforeStartDate);
    expect(newTripViewModel.allErrors, contains(NewTripFieldError.endDateBeforeStartDate));
  });

  test(
      'GIVEN trip countries is not set '
      'THEN trip countries error is present', () {
    expect(newTripViewModel.tripCountriesError, NewTripFieldError.tripCountriesNotSelected);
    expect(newTripViewModel.allErrors, contains(NewTripFieldError.tripCountriesNotSelected));
  });

  test(
      'GIVEN trip countries is selected as single country '
      'AND single country is not selected '
      'THEN single country error is present', () {
    newTripViewModel.setTripCountries(TripCountries.single);
    expect(newTripViewModel.singleCountryError, NewTripFieldError.singleCountryNotSelected);
    expect(newTripViewModel.allErrors, contains(NewTripFieldError.singleCountryNotSelected));
  });

  test(
      'GIVEN trip countries is selected as single country '
      'AND single country is selected '
      'THEN single country error is not present', () {
    newTripViewModel.setTripCountries(TripCountries.single);
    newTripViewModel.setSingleCountry('PL');
    expect(newTripViewModel.singleCountryError, null);
  });

  test(
      'GIVEN trip countries is selected as multiple countries '
      'THEN single country error is not present', () {
    newTripViewModel.setTripCountries(TripCountries.multiple);
    expect(newTripViewModel.singleCountryError, null);
  });

  test(
      'GIVEN all fields are set '
      'THEN form is valid', () {
    newTripViewModel.setTripName('Trip name');
    newTripViewModel.setStartDate(DateTime.now());
    newTripViewModel.setEndDate(DateTime.now().add(const Duration(days: 1)));
    newTripViewModel.setTripCountries(TripCountries.single);
    newTripViewModel.setSingleCountry('PL');
    expect(newTripViewModel.allErrors.where((e) => e != null), isEmpty);
    expect(newTripViewModel.isValid, true);
  });
}
