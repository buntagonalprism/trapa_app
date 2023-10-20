import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

import '../../../models/trip/common/coordinates.dart';
import '../../../models/trip/locations/location.dart';
import '../../../utils/form_store.dart';

part 'edit_location_form.g.dart';

class EditLocationForm = _EditLocationForm with _$EditLocationForm;

abstract class _EditLocationForm extends FormStore with Store {
  _EditLocationForm({required this.countryCode, this.location})
      : super(
          errorDisplayBehaviour:
              location == null ? ErrorDisplayBehaviour.onSubmit : ErrorDisplayBehaviour.always,
        );

  final String countryCode;
  final Location? location;

  late final TextFieldStore name = TextFieldStore(
    form: this,
    initialValue: location?.name ?? '',
    validator: (value) => value.isEmpty ? EditLocationError.locationNameMissing : null,
  );

  late final TextFieldStore latitude = TextFieldStore(
    form: this,
    initialValue: location?.coordinates.lat.toString() ?? '',
    validator: const NumberRangeValidator(
      min: -90,
      max: 90,
      missingError: EditLocationError.latitudeMissing,
      invalidError: EditLocationError.latitudeInvalid,
    ),
  );

  late final TextFieldStore longitude = TextFieldStore(
    form: this,
    initialValue: location?.coordinates.lng.toString() ?? '',
    validator: const NumberRangeValidator(
      min: -180,
      max: 180,
      missingError: EditLocationError.latitudeMissing,
      invalidError: EditLocationError.latitudeInvalid,
    ),
  );

  late final FieldStore<Location?> parentLocation = FieldStore<Location?>(
    form: this,
    initialValue: location?.parentLocation,
    validator: (value) => null,
  );

  Location toLocation() {
    return Location(
      id: location?.id ?? '',
      name: name.value,
      parentLocation: parentLocation.value,
      countryCode: countryCode,
      coordinates: Coordinates(
        lat: double.parse(latitude.value),
        lng: double.parse(longitude.value),
      ),
    );
  }
}

class NumberRangeValidator {
  const NumberRangeValidator({
    required this.min,
    required this.max,
    required this.missingError,
    required this.invalidError,
  });

  final double min;
  final double max;
  final FieldError missingError;
  final FieldError invalidError;

  FieldError? call(String? valueText) {
    if (valueText == null || valueText.isEmpty) {
      return missingError;
    }
    final value = double.tryParse(valueText);
    if (value == null) {
      return invalidError;
    }
    if (value < min || value > max) {
      return invalidError;
    }
    return null;
  }
}

enum EditLocationError implements FieldError {
  locationNameMissing,
  latitudeMissing,
  latitudeInvalid,
  longitudeMissing,
  longitudeInvalid;

  const EditLocationError();

  @override
  String message(BuildContext context) {
    return switch (this) {
      locationNameMissing => 'Location name is required',
      latitudeMissing => 'Latitude is required',
      latitudeInvalid => 'Latitude must be between -90 and 90',
      longitudeMissing => 'Longitude is required',
      longitudeInvalid => 'Longitude must be between -180 and 180',
    };
  }
}
