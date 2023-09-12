// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_trip_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewTripViewModel on _NewTripViewModel, Store {
  Computed<Country?>? _$countryComputed;

  @override
  Country? get country =>
      (_$countryComputed ??= Computed<Country?>(() => super.country,
              name: '_NewTripViewModel.country'))
          .value;
  Computed<int>? _$tripDurationComputed;

  @override
  int get tripDuration =>
      (_$tripDurationComputed ??= Computed<int>(() => super.tripDuration,
              name: '_NewTripViewModel.tripDuration'))
          .value;
  Computed<NewTripFieldError?>? _$tripNameErrorComputed;

  @override
  NewTripFieldError? get tripNameError => (_$tripNameErrorComputed ??=
          Computed<NewTripFieldError?>(() => super.tripNameError,
              name: '_NewTripViewModel.tripNameError'))
      .value;
  Computed<NewTripFieldError?>? _$startDateErrorComputed;

  @override
  NewTripFieldError? get startDateError => (_$startDateErrorComputed ??=
          Computed<NewTripFieldError?>(() => super.startDateError,
              name: '_NewTripViewModel.startDateError'))
      .value;
  Computed<NewTripFieldError?>? _$endDateErrorComputed;

  @override
  NewTripFieldError? get endDateError => (_$endDateErrorComputed ??=
          Computed<NewTripFieldError?>(() => super.endDateError,
              name: '_NewTripViewModel.endDateError'))
      .value;
  Computed<NewTripFieldError?>? _$tripCountriesErrorComputed;

  @override
  NewTripFieldError? get tripCountriesError => (_$tripCountriesErrorComputed ??=
          Computed<NewTripFieldError?>(() => super.tripCountriesError,
              name: '_NewTripViewModel.tripCountriesError'))
      .value;
  Computed<NewTripFieldError?>? _$singleCountryErrorComputed;

  @override
  NewTripFieldError? get singleCountryError => (_$singleCountryErrorComputed ??=
          Computed<NewTripFieldError?>(() => super.singleCountryError,
              name: '_NewTripViewModel.singleCountryError'))
      .value;
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_NewTripViewModel.isValid'))
      .value;

  late final _$tripNameAtom =
      Atom(name: '_NewTripViewModel.tripName', context: context);

  @override
  String get tripName {
    _$tripNameAtom.reportRead();
    return super.tripName;
  }

  @override
  set tripName(String value) {
    _$tripNameAtom.reportWrite(value, super.tripName, () {
      super.tripName = value;
    });
  }

  late final _$startDateAtom =
      Atom(name: '_NewTripViewModel.startDate', context: context);

  @override
  DateTime? get startDate {
    _$startDateAtom.reportRead();
    return super.startDate;
  }

  @override
  set startDate(DateTime? value) {
    _$startDateAtom.reportWrite(value, super.startDate, () {
      super.startDate = value;
    });
  }

  late final _$endDateAtom =
      Atom(name: '_NewTripViewModel.endDate', context: context);

  @override
  DateTime? get endDate {
    _$endDateAtom.reportRead();
    return super.endDate;
  }

  @override
  set endDate(DateTime? value) {
    _$endDateAtom.reportWrite(value, super.endDate, () {
      super.endDate = value;
    });
  }

  late final _$tripCountriesAtom =
      Atom(name: '_NewTripViewModel.tripCountries', context: context);

  @override
  TripCountries get tripCountries {
    _$tripCountriesAtom.reportRead();
    return super.tripCountries;
  }

  @override
  set tripCountries(TripCountries value) {
    _$tripCountriesAtom.reportWrite(value, super.tripCountries, () {
      super.tripCountries = value;
    });
  }

  late final _$singleCountryCodeAtom =
      Atom(name: '_NewTripViewModel.singleCountryCode', context: context);

  @override
  String? get singleCountryCode {
    _$singleCountryCodeAtom.reportRead();
    return super.singleCountryCode;
  }

  @override
  set singleCountryCode(String? value) {
    _$singleCountryCodeAtom.reportWrite(value, super.singleCountryCode, () {
      super.singleCountryCode = value;
    });
  }

  late final _$showErrorsAtom =
      Atom(name: '_NewTripViewModel.showErrors', context: context);

  @override
  bool get showErrors {
    _$showErrorsAtom.reportRead();
    return super.showErrors;
  }

  @override
  set showErrors(bool value) {
    _$showErrorsAtom.reportWrite(value, super.showErrors, () {
      super.showErrors = value;
    });
  }

  late final _$_NewTripViewModelActionController =
      ActionController(name: '_NewTripViewModel', context: context);

  @override
  void setTripName(String newTripName) {
    final _$actionInfo = _$_NewTripViewModelActionController.startAction(
        name: '_NewTripViewModel.setTripName');
    try {
      return super.setTripName(newTripName);
    } finally {
      _$_NewTripViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStartDate(DateTime newStartDate) {
    final _$actionInfo = _$_NewTripViewModelActionController.startAction(
        name: '_NewTripViewModel.setStartDate');
    try {
      return super.setStartDate(newStartDate);
    } finally {
      _$_NewTripViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEndDate(DateTime newEndDate) {
    final _$actionInfo = _$_NewTripViewModelActionController.startAction(
        name: '_NewTripViewModel.setEndDate');
    try {
      return super.setEndDate(newEndDate);
    } finally {
      _$_NewTripViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTripCountries(TripCountries newTripCountries) {
    final _$actionInfo = _$_NewTripViewModelActionController.startAction(
        name: '_NewTripViewModel.setTripCountries');
    try {
      return super.setTripCountries(newTripCountries);
    } finally {
      _$_NewTripViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSingleCountry(String? contryCode) {
    final _$actionInfo = _$_NewTripViewModelActionController.startAction(
        name: '_NewTripViewModel.setSingleCountry');
    try {
      return super.setSingleCountry(contryCode);
    } finally {
      _$_NewTripViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void createTrip() {
    final _$actionInfo = _$_NewTripViewModelActionController.startAction(
        name: '_NewTripViewModel.createTrip');
    try {
      return super.createTrip();
    } finally {
      _$_NewTripViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tripName: ${tripName},
startDate: ${startDate},
endDate: ${endDate},
tripCountries: ${tripCountries},
singleCountryCode: ${singleCountryCode},
showErrors: ${showErrors},
country: ${country},
tripDuration: ${tripDuration},
tripNameError: ${tripNameError},
startDateError: ${startDateError},
endDateError: ${endDateError},
tripCountriesError: ${tripCountriesError},
singleCountryError: ${singleCountryError},
isValid: ${isValid}
    ''';
  }
}
