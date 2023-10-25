import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'coordinates.freezed.dart';
part 'coordinates.g.dart';

@freezed
class Coordinates with _$Coordinates {
  const Coordinates._();

  const factory Coordinates({
    required double lat,
    required double lng,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
}

@freezed
class BoundingBox with _$BoundingBox {
  const BoundingBox._();

  const factory BoundingBox({
    required Coordinates southWest,
    required Coordinates northEast,
  }) = _BoundingBox;

  factory BoundingBox.fromJson(Map<String, dynamic> json) => _$BoundingBoxFromJson(json);

  Coordinates get center {
    return Coordinates(
      lat: (southWest.lat + northEast.lat) / 2,
      lng: (southWest.lng + northEast.lng) / 2,
    );
  }
}

extension GoogleMapsCoordinatesExtension on Coordinates {
  LatLng toLatLng() {
    return LatLng(lat, lng);
  }
}

extension GoogleMapsBoundingBoxExtension on BoundingBox {
  LatLngBounds toLatLngBounds() {
    return LatLngBounds(
      southwest: southWest.toLatLng(),
      northeast: northEast.toLatLng(),
    );
  }
}
