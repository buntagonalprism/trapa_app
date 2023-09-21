import 'package:freezed_annotation/freezed_annotation.dart';

import 'contact_person.dart';

part 'contact_details.freezed.dart';
part 'contact_details.g.dart';

@freezed
class ContactDetails with _$ContactDetails {
  const ContactDetails._();

  const factory ContactDetails({
    List<String>? phoneNumbers,
    List<String>? emailAddresses,
    List<String>? websiteLinks,
    List<ContactPerson>? contactPersons,
  }) = _ContactDetails;

  factory ContactDetails.fromJson(Map<String, dynamic> json) => _$ContactDetailsFromJson(json);
}
