// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attraction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attraction _$$_AttractionFromJson(Map<String, dynamic> json) =>
    _$_Attraction(
      name: json['name'] as String,
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      priceRating:
          $enumDecodeNullable(_$PriceRatingEnumMap, json['priceRating']),
      interestRating:
          $enumDecodeNullable(_$InterestRatingEnumMap, json['interestRating']),
      type: $enumDecodeNullable(_$AttractionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_AttractionToJson(_$_Attraction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'details': instance.details,
      'coordinates': instance.coordinates,
      'priceRating': _$PriceRatingEnumMap[instance.priceRating],
      'interestRating': _$InterestRatingEnumMap[instance.interestRating],
      'type': _$AttractionTypeEnumMap[instance.type],
    };

const _$PriceRatingEnumMap = {
  PriceRating.free: 'free',
  PriceRating.cheap: 'cheap',
  PriceRating.moderatelyExpensive: 'moderatelyExpensive',
  PriceRating.expensive: 'expensive',
  PriceRating.veryExpensive: 'veryExpensive',
};

const _$InterestRatingEnumMap = {
  InterestRating.noInterest: 'noInterest',
  InterestRating.veryLow: 'veryLow',
  InterestRating.low: 'low',
  InterestRating.moderatelyLow: 'moderatelyLow',
  InterestRating.moderate: 'moderate',
  InterestRating.moderatelyHigh: 'moderatelyHigh',
  InterestRating.high: 'high',
  InterestRating.veryHigh: 'veryHigh',
  InterestRating.mustDo: 'mustDo',
};

const _$AttractionTypeEnumMap = {
  AttractionType.attraction: 'attraction',
  AttractionType.bar: 'bar',
  AttractionType.restaurant: 'restaurant',
  AttractionType.hotel: 'hotel',
  AttractionType.shopping: 'shopping',
  AttractionType.nightlife: 'nightlife',
  AttractionType.tour: 'tour',
  AttractionType.event: 'event',
  AttractionType.transport: 'transport',
  AttractionType.nature: 'nature',
  AttractionType.landmark: 'landmark',
  AttractionType.historic: 'historic',
  AttractionType.other: 'other',
};
