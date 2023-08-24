// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TripViewModel on _TripViewModel, Store {
  late final _$tripIdAtom =
      Atom(name: '_TripViewModel.tripId', context: context);

  @override
  String get tripId {
    _$tripIdAtom.reportRead();
    return super.tripId;
  }

  @override
  set tripId(String value) {
    _$tripIdAtom.reportWrite(value, super.tripId, () {
      super.tripId = value;
    });
  }

  late final _$_TripViewModelActionController =
      ActionController(name: '_TripViewModel', context: context);

  @override
  void setTripId(String id) {
    final _$actionInfo = _$_TripViewModelActionController.startAction(
        name: '_TripViewModel.setTripId');
    try {
      return super.setTripId(id);
    } finally {
      _$_TripViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tripId: ${tripId}
    ''';
  }
}
