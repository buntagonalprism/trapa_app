// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactDetails _$ContactDetailsFromJson(Map<String, dynamic> json) {
  return _ContactDetails.fromJson(json);
}

/// @nodoc
mixin _$ContactDetails {
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  List<String>? get emailAddresses => throw _privateConstructorUsedError;
  List<String>? get websiteLinks => throw _privateConstructorUsedError;
  List<ContactPerson>? get contactPersons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDetailsCopyWith<ContactDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsCopyWith<$Res> {
  factory $ContactDetailsCopyWith(
          ContactDetails value, $Res Function(ContactDetails) then) =
      _$ContactDetailsCopyWithImpl<$Res, ContactDetails>;
  @useResult
  $Res call(
      {List<String>? phoneNumbers,
      List<String>? emailAddresses,
      List<String>? websiteLinks,
      List<ContactPerson>? contactPersons});
}

/// @nodoc
class _$ContactDetailsCopyWithImpl<$Res, $Val extends ContactDetails>
    implements $ContactDetailsCopyWith<$Res> {
  _$ContactDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumbers = freezed,
    Object? emailAddresses = freezed,
    Object? websiteLinks = freezed,
    Object? contactPersons = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      emailAddresses: freezed == emailAddresses
          ? _value.emailAddresses
          : emailAddresses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      websiteLinks: freezed == websiteLinks
          ? _value.websiteLinks
          : websiteLinks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contactPersons: freezed == contactPersons
          ? _value.contactPersons
          : contactPersons // ignore: cast_nullable_to_non_nullable
              as List<ContactPerson>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactDetailsCopyWith<$Res>
    implements $ContactDetailsCopyWith<$Res> {
  factory _$$_ContactDetailsCopyWith(
          _$_ContactDetails value, $Res Function(_$_ContactDetails) then) =
      __$$_ContactDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? phoneNumbers,
      List<String>? emailAddresses,
      List<String>? websiteLinks,
      List<ContactPerson>? contactPersons});
}

/// @nodoc
class __$$_ContactDetailsCopyWithImpl<$Res>
    extends _$ContactDetailsCopyWithImpl<$Res, _$_ContactDetails>
    implements _$$_ContactDetailsCopyWith<$Res> {
  __$$_ContactDetailsCopyWithImpl(
      _$_ContactDetails _value, $Res Function(_$_ContactDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumbers = freezed,
    Object? emailAddresses = freezed,
    Object? websiteLinks = freezed,
    Object? contactPersons = freezed,
  }) {
    return _then(_$_ContactDetails(
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      emailAddresses: freezed == emailAddresses
          ? _value._emailAddresses
          : emailAddresses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      websiteLinks: freezed == websiteLinks
          ? _value._websiteLinks
          : websiteLinks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contactPersons: freezed == contactPersons
          ? _value._contactPersons
          : contactPersons // ignore: cast_nullable_to_non_nullable
              as List<ContactPerson>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactDetails extends _ContactDetails {
  const _$_ContactDetails(
      {final List<String>? phoneNumbers,
      final List<String>? emailAddresses,
      final List<String>? websiteLinks,
      final List<ContactPerson>? contactPersons})
      : _phoneNumbers = phoneNumbers,
        _emailAddresses = emailAddresses,
        _websiteLinks = websiteLinks,
        _contactPersons = contactPersons,
        super._();

  factory _$_ContactDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ContactDetailsFromJson(json);

  final List<String>? _phoneNumbers;
  @override
  List<String>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _emailAddresses;
  @override
  List<String>? get emailAddresses {
    final value = _emailAddresses;
    if (value == null) return null;
    if (_emailAddresses is EqualUnmodifiableListView) return _emailAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _websiteLinks;
  @override
  List<String>? get websiteLinks {
    final value = _websiteLinks;
    if (value == null) return null;
    if (_websiteLinks is EqualUnmodifiableListView) return _websiteLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactPerson>? _contactPersons;
  @override
  List<ContactPerson>? get contactPersons {
    final value = _contactPersons;
    if (value == null) return null;
    if (_contactPersons is EqualUnmodifiableListView) return _contactPersons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContactDetails(phoneNumbers: $phoneNumbers, emailAddresses: $emailAddresses, websiteLinks: $websiteLinks, contactPersons: $contactPersons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactDetails &&
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers) &&
            const DeepCollectionEquality()
                .equals(other._emailAddresses, _emailAddresses) &&
            const DeepCollectionEquality()
                .equals(other._websiteLinks, _websiteLinks) &&
            const DeepCollectionEquality()
                .equals(other._contactPersons, _contactPersons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_phoneNumbers),
      const DeepCollectionEquality().hash(_emailAddresses),
      const DeepCollectionEquality().hash(_websiteLinks),
      const DeepCollectionEquality().hash(_contactPersons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactDetailsCopyWith<_$_ContactDetails> get copyWith =>
      __$$_ContactDetailsCopyWithImpl<_$_ContactDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactDetailsToJson(
      this,
    );
  }
}

abstract class _ContactDetails extends ContactDetails {
  const factory _ContactDetails(
      {final List<String>? phoneNumbers,
      final List<String>? emailAddresses,
      final List<String>? websiteLinks,
      final List<ContactPerson>? contactPersons}) = _$_ContactDetails;
  const _ContactDetails._() : super._();

  factory _ContactDetails.fromJson(Map<String, dynamic> json) =
      _$_ContactDetails.fromJson;

  @override
  List<String>? get phoneNumbers;
  @override
  List<String>? get emailAddresses;
  @override
  List<String>? get websiteLinks;
  @override
  List<ContactPerson>? get contactPersons;
  @override
  @JsonKey(ignore: true)
  _$$_ContactDetailsCopyWith<_$_ContactDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
