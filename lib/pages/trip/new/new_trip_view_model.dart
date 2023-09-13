import 'package:country_picker/country_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../messages.dart';
import '../../../models/operations.dart';
import '../../../models/trip/trip.dart';
import '../../../stores/trip_store.dart';
import '../../../utils/form_store.dart';

part 'new_trip_view_model.g.dart';

@injectable
class NewTripViewModel = _NewTripViewModel with _$NewTripViewModel;

abstract class _NewTripViewModel with Store {
  _NewTripViewModel({
    required this.tripStore,
  });

  final TripStore tripStore;

  final form = NewTripForm();

  Future<OperationResult<Trip>>? createTrip() {
    form.submit();
    if (!form.isValid) {
      return null;
    }
    return _createTrip();
  }

  Future<OperationResult<Trip>> _createTrip() async {
    final result = await tripStore.createTrip(
      name: form.tripName.value,
      startDate: form.startDate.value!,
      endDate: form.endDate.value!,
      singleCountry: form.tripCountries.value == TripCountries.single,
    );
    return result.when(
      success: (trip) => OperationResult.success(trip),
      connectionError: () => const OperationResult.error(NewTripApiError.networkError),
      unknownError: () => const OperationResult.error(NewTripApiError.unknownError),
    );
  }
}

enum NewTripFieldError implements FieldError {
  tripNameMissing,
  startDateMissing,
  endDateMissing,
  endDateBeforeStartDate,
  tripCountriesNotSelected,
  singleCountryNotSelected;

  const NewTripFieldError();

  @override
  String message(BuildContext context) {
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

enum NewTripApiError implements OperationError {
  networkError(retryable: true),
  unknownError(retryable: false);

  const NewTripApiError({required this.retryable});

  @override
  final bool retryable;

  @override
  String titleText(BuildContext context) {
    final messages = Messages.of(context)!;
    return switch (this) {
      networkError => messages.connectionErrorTitle,
      unknownError => messages.unknownErrorTitle,
    };
  }

  @override
  String bodyText(BuildContext context) {
    final messages = Messages.of(context)!;
    return switch (this) {
      networkError => messages.connectionErrorBody,
      unknownError => messages.unknownErrorBody,
    };
  }
}

enum TripCountries {
  notSelected,
  single,
  multiple,
}

@injectable
class NewTripForm = _NewTripForm with _$NewTripForm;

abstract class _NewTripForm extends FormStore with Store {
  _NewTripForm() : super(errorDisplayBehaviour: ErrorDisplayBehaviour.onSubmit);

  late final FieldStore<String> tripName = FieldStore<String>(
    form: this,
    initialValue: '',
    validator: (value) => value.isEmpty ? NewTripFieldError.tripNameMissing : null,
  );

  late final FieldStore<DateTime?> startDate = FieldStore<DateTime?>(
    form: this,
    initialValue: null,
    validator: (value) => value == null ? NewTripFieldError.startDateMissing : null,
  );

  late final FieldStore<DateTime?> endDate = FieldStore<DateTime?>(
    form: this,
    initialValue: null,
    validator: (value) {
      if (value == null) {
        return NewTripFieldError.endDateMissing;
      }
      if (startDate.value != null && value.isBefore(startDate.value!)) {
        return NewTripFieldError.endDateBeforeStartDate;
      }
      return null;
    },
  );

  late final FieldStore<TripCountries> tripCountries = FieldStore<TripCountries>(
    form: this,
    initialValue: TripCountries.notSelected,
    validator: (value) =>
        value == TripCountries.notSelected ? NewTripFieldError.tripCountriesNotSelected : null,
  );

  late final FieldStore<String?> singleCountryCode = FieldStore<String?>(
    form: this,
    initialValue: null,
    validator: (value) => tripCountries.value == TripCountries.single && value == null
        ? NewTripFieldError.singleCountryNotSelected
        : null,
  );

  @computed
  Country? get country =>
      singleCountryCode.value != null ? Country.parse(singleCountryCode.value!) : null;

  @computed
  int get tripDuration => endDate.value != null && startDate.value != null
      ? endDate.value!.difference(startDate.value!).inDays
      : 0;
}
