// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactPerson _$$_ContactPersonFromJson(Map<String, dynamic> json) =>
    _$_ContactPerson(
      name: json['name'] as String,
      emailAddresses: (json['emailAddresses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ContactPersonToJson(_$_ContactPerson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emailAddresses': instance.emailAddresses,
      'phoneNumbers': instance.phoneNumbers,
    };
