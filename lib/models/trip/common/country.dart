import 'package:country_picker/country_picker.dart' as country_picker;
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinates.dart';
import 'data/country_bounding_boxes.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const Country._();

  const factory Country._internal({required String code}) = _Country;

  factory Country({
    required String countryCode,
  }) {
    if (_countriesByCode.containsKey(countryCode)) {
      return Country._internal(code: countryCode);
    } else {
      throw InvalidCountryException(countryCode);
    }
  }

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  country_picker.Country get _country {
    return _countriesByCode[code]!;
  }

  Widget flagIcon({double size = 14}) {
    return Text(_country.flagEmoji, style: TextStyle(fontSize: size));
  }

  String name(BuildContext context) {
    return _country.getTranslatedName(context) ?? 'Translation missing';
  }

  static final Map<String, country_picker.Country> _countriesByCode = {
    for (var country in country_picker.CountryService().getAll()) country.countryCode: country
  };

  static final List<Country> all =
      _countriesByCode.keys.map((code) => Country._internal(code: code)).toList();

  BoundingBox get boundingBox {
    return boundingBoxes[code]!;
  }
}

class InvalidCountryException implements Exception {
  final String countryCode;

  InvalidCountryException(this.countryCode);

  @override
  String toString() {
    return 'InvalidCountryException: $countryCode is not a valid country code';
  }
}
