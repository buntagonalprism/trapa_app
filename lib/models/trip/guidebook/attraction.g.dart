// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attraction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attraction _$$_AttractionFromJson(Map<String, dynamic> json) =>
    _$_Attraction(
      name: json['name'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
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
      openDateRange: json['openDateRange'] == null
          ? null
          : DateRange.fromJson(json['openDateRange'] as Map<String, dynamic>),
      openDays: json['openDays'] == null
          ? null
          : OpenDaysSchedule.fromJson(json['openDays'] as Map<String, dynamic>),
      openingHours: (json['openingHours'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            $enumDecode(_$DayOfWeekEnumMap, k),
            (e as List<dynamic>)
                .map((e) => TimeRange.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_AttractionToJson(_$_Attraction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'details': instance.details,
      'coordinates': instance.coordinates,
      'priceRating': _$PriceRatingEnumMap[instance.priceRating],
      'interestRating': _$InterestRatingEnumMap[instance.interestRating],
      'type': _$AttractionTypeEnumMap[instance.type],
      'openDateRange': instance.openDateRange,
      'openDays': instance.openDays,
      'openingHours': instance.openingHours
          ?.map((k, e) => MapEntry(_$DayOfWeekEnumMap[k]!, e)),
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

const _$DayOfWeekEnumMap = {
  DayOfWeek.monday: 'monday',
  DayOfWeek.tuesday: 'tuesday',
  DayOfWeek.wednesday: 'wednesday',
  DayOfWeek.thursday: 'thursday',
  DayOfWeek.friday: 'friday',
  DayOfWeek.saturday: 'saturday',
  DayOfWeek.sunday: 'sunday',
};
