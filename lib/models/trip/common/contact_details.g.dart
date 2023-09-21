// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactDetails _$$_ContactDetailsFromJson(Map<String, dynamic> json) =>
    _$_ContactDetails(
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      emailAddresses: (json['emailAddresses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      websiteLinks: (json['websiteLinks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      contactPersons: (json['contactPersons'] as List<dynamic>?)
          ?.map((e) => ContactPerson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContactDetailsToJson(_$_ContactDetails instance) =>
    <String, dynamic>{
      'phoneNumbers': instance.phoneNumbers,
      'emailAddresses': instance.emailAddresses,
      'websiteLinks': instance.websiteLinks,
      'contactPersons': instance.contactPersons,
    };
