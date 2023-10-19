// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accommodation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Accommodation _$$_AccommodationFromJson(Map<String, dynamic> json) =>
    _$_Accommodation(
      name: json['name'] as String,
      region: Location.fromJson(json['region'] as Map<String, dynamic>),
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      price: $enumDecodeNullable(_$PriceRatingEnumMap, json['price']),
      type: $enumDecodeNullable(_$AccommodationTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_AccommodationToJson(_$_Accommodation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'details': instance.details,
      'address': instance.address,
      'coordinates': instance.coordinates,
      'rating': instance.rating,
      'price': _$PriceRatingEnumMap[instance.price],
      'type': _$AccommodationTypeEnumMap[instance.type],
    };

const _$PriceRatingEnumMap = {
  PriceRating.free: 'free',
  PriceRating.cheap: 'cheap',
  PriceRating.moderatelyExpensive: 'moderatelyExpensive',
  PriceRating.expensive: 'expensive',
  PriceRating.veryExpensive: 'veryExpensive',
};

const _$AccommodationTypeEnumMap = {
  AccommodationType.hotel: 'hotel',
  AccommodationType.hostel: 'hostel',
  AccommodationType.guesthouse: 'guesthouse',
  AccommodationType.campsite: 'campsite',
  AccommodationType.apartment: 'apartment',
  AccommodationType.acquaintance: 'acquaintance',
  AccommodationType.friend: 'friend',
  AccommodationType.family: 'family',
};
