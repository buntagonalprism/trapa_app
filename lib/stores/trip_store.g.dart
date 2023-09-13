// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TripStore on _TripStore, Store {
  Computed<ObservableStream<List<Trip>>?>? _$_userTripsComputed;

  @override
  ObservableStream<List<Trip>>? get _userTrips => (_$_userTripsComputed ??=
          Computed<ObservableStream<List<Trip>>?>(() => super._userTrips,
              name: '_TripStore._userTrips'))
      .value;
  Computed<List<Trip>>? _$userTripsComputed;

  @override
  List<Trip> get userTrips =>
      (_$userTripsComputed ??= Computed<List<Trip>>(() => super.userTrips,
              name: '_TripStore.userTrips'))
          .value;

  @override
  String toString() {
    return '''
userTrips: ${userTrips}
    ''';
  }
}
