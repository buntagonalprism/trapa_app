import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:trapa_app/pages/trip/new/new_trip_view_model.dart';
import 'package:trapa_app/stores/trip_store.dart';

class MockTripStore extends Mock implements TripStore {}

void main() {
  late MockTripStore tripStore;
  late NewTripViewModel vm;

  setUp(() {
    tripStore = MockTripStore();
    vm = NewTripViewModel(tripStore: tripStore);
  });

  test(
      'GIVEN trip name not set '
      'THEN trip name error is present', () {
    vm.form.tripName.set('');
    expect(vm.form.tripName.error, NewTripFieldError.tripNameMissing);
  });

  test(
      'GIVEN start date not set '
      'THEN start date error is present', () {
    vm.form.startDate.set(null);
    expect(vm.form.startDate.error, NewTripFieldError.startDateMissing);
  });

  test(
      'GIVEN end date not set '
      'THEN end date error is present', () {
    vm.form.endDate.set(null);
    expect(vm.form.endDate.error, NewTripFieldError.endDateMissing);
  });

  test(
      'GIVEN end date before start date '
      'THEN end date error is present', () {
    vm.form.startDate.set(DateTime(2021, 1, 1));
    vm.form.endDate.set(DateTime(2020, 1, 1));
    expect(vm.form.endDate.error, NewTripFieldError.endDateBeforeStartDate);
  });

  test(
      'GIVEN trip countries not selected '
      'THEN trip countries error is present', () {
    expect(vm.form.tripCountries.error, NewTripFieldError.tripCountriesNotSelected);
  });

  test(
      'GIVEN trip countries is selected as single country '
      'AND single country not selected '
      'THEN single country error is present', () {
    vm.form.tripCountries.set(TripCountries.single);
    expect(vm.form.singleCountryCode.error, NewTripFieldError.singleCountryNotSelected);
  });

  test(
      'GIVEN trip countries is selected as multiple countries '
      'AND single country not selected '
      'THEN single country error is not present', () {
    vm.form.tripCountries.set(TripCountries.multiple);
    expect(vm.form.singleCountryCode.error, null);
  });

  test(
      'GIVEN all fields are valid '
      'THEN form is valid', () {
    vm.form.tripName.set('Trip name');
    vm.form.startDate.set(DateTime(2021, 1, 1));
    vm.form.endDate.set(DateTime(2021, 1, 2));
    vm.form.tripCountries.set(TripCountries.single);
    vm.form.singleCountryCode.set('IT');
    expect(vm.form.isValid, true);
  });
}
