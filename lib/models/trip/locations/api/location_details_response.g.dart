// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDetailsResponse _$$_LocationDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LocationDetailsResponse(
      place: LocationSuggestionResponse.fromJson(
          json['place'] as Map<String, dynamic>),
      coordinates: CoordinatesResposne.fromJson(
          json['coordinates'] as Map<String, dynamic>),
      website: json['website'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_LocationDetailsResponseToJson(
        _$_LocationDetailsResponse instance) =>
    <String, dynamic>{
      'place': instance.place,
      'coordinates': instance.coordinates,
      'website': instance.website,
      'id': instance.id,
    };

_$_CoordinatesResposne _$$_CoordinatesResposneFromJson(
        Map<String, dynamic> json) =>
    _$_CoordinatesResposne(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CoordinatesResposneToJson(
        _$_CoordinatesResposne instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
