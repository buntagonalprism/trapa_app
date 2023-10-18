// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocationsViewModel on _LocationsViewModel, Store {
  Computed<List<Region>>? _$regionsInCountryComputed;

  @override
  List<Region> get regionsInCountry => (_$regionsInCountryComputed ??=
          Computed<List<Region>>(() => super.regionsInCountry,
              name: '_LocationsViewModel.regionsInCountry'))
      .value;
  Computed<OperationState<List<RegionSuggestion>>>? _$searchResultsComputed;

  @override
  OperationState<List<RegionSuggestion>> get searchResults =>
      (_$searchResultsComputed ??=
              Computed<OperationState<List<RegionSuggestion>>>(
                  () => super.searchResults,
                  name: '_LocationsViewModel.searchResults'))
          .value;

  late final _$selectedCountryAtom =
      Atom(name: '_LocationsViewModel.selectedCountry', context: context);

  @override
  Country? get selectedCountry {
    _$selectedCountryAtom.reportRead();
    return super.selectedCountry;
  }

  @override
  set selectedCountry(Country? value) {
    _$selectedCountryAtom.reportWrite(value, super.selectedCountry, () {
      super.selectedCountry = value;
    });
  }

  late final _$tripIdAtom =
      Atom(name: '_LocationsViewModel.tripId', context: context);

  @override
  String? get tripId {
    _$tripIdAtom.reportRead();
    return super.tripId;
  }

  @override
  set tripId(String? value) {
    _$tripIdAtom.reportWrite(value, super.tripId, () {
      super.tripId = value;
    });
  }

  late final _$locationSearchQueryAtom =
      Atom(name: '_LocationsViewModel.locationSearchQuery', context: context);

  @override
  String? get locationSearchQuery {
    _$locationSearchQueryAtom.reportRead();
    return super.locationSearchQuery;
  }

  @override
  set locationSearchQuery(String? value) {
    _$locationSearchQueryAtom.reportWrite(value, super.locationSearchQuery, () {
      super.locationSearchQuery = value;
    });
  }

  late final _$tripObservableAtom =
      Atom(name: '_LocationsViewModel.tripObservable', context: context);

  @override
  ObservableValue<NetworkDataSnapshot<Trip>> get tripObservable {
    _$tripObservableAtom.reportRead();
    return super.tripObservable;
  }

  @override
  set tripObservable(ObservableValue<NetworkDataSnapshot<Trip>> value) {
    _$tripObservableAtom.reportWrite(value, super.tripObservable, () {
      super.tripObservable = value;
    });
  }

  late final _$regionObservableAtom =
      Atom(name: '_LocationsViewModel.regionObservable', context: context);

  @override
  ObservableValue<NetworkDataSnapshot<List<Region>>> get regionObservable {
    _$regionObservableAtom.reportRead();
    return super.regionObservable;
  }

  @override
  set regionObservable(
      ObservableValue<NetworkDataSnapshot<List<Region>>> value) {
    _$regionObservableAtom.reportWrite(value, super.regionObservable, () {
      super.regionObservable = value;
    });
  }

  late final _$_searchResultsFutureAtom =
      Atom(name: '_LocationsViewModel._searchResultsFuture', context: context);

  @override
  ObservableFuture<List<RegionSuggestion>>? get _searchResultsFuture {
    _$_searchResultsFutureAtom.reportRead();
    return super._searchResultsFuture;
  }

  @override
  set _searchResultsFuture(ObservableFuture<List<RegionSuggestion>>? value) {
    _$_searchResultsFutureAtom.reportWrite(value, super._searchResultsFuture,
        () {
      super._searchResultsFuture = value;
    });
  }

  late final _$_LocationsViewModelActionController =
      ActionController(name: '_LocationsViewModel', context: context);

  @override
  void selectCountry(Country country) {
    final _$actionInfo = _$_LocationsViewModelActionController.startAction(
        name: '_LocationsViewModel.selectCountry');
    try {
      return super.selectCountry(country);
    } finally {
      _$_LocationsViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTripId(String id) {
    final _$actionInfo = _$_LocationsViewModelActionController.startAction(
        name: '_LocationsViewModel.setTripId');
    try {
      return super.setTripId(id);
    } finally {
      _$_LocationsViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLocationSearchQuery(String query) {
    final _$actionInfo = _$_LocationsViewModelActionController.startAction(
        name: '_LocationsViewModel.setLocationSearchQuery');
    try {
      return super.setLocationSearchQuery(query);
    } finally {
      _$_LocationsViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedCountry: ${selectedCountry},
tripId: ${tripId},
locationSearchQuery: ${locationSearchQuery},
tripObservable: ${tripObservable},
regionObservable: ${regionObservable},
regionsInCountry: ${regionsInCountry},
searchResults: ${searchResults}
    ''';
  }
}
