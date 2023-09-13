// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_trip_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewTripViewModel on _NewTripViewModel, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}

mixin _$NewTripForm on _NewTripForm, Store {
  Computed<Country?>? _$countryComputed;

  @override
  Country? get country => (_$countryComputed ??=
          Computed<Country?>(() => super.country, name: '_NewTripForm.country'))
      .value;
  Computed<int>? _$tripDurationComputed;

  @override
  int get tripDuration =>
      (_$tripDurationComputed ??= Computed<int>(() => super.tripDuration,
              name: '_NewTripForm.tripDuration'))
          .value;

  @override
  String toString() {
    return '''
country: ${country},
tripDuration: ${tripDuration}
    ''';
  }
}
