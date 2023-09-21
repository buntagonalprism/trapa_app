// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactPerson _$ContactPersonFromJson(Map<String, dynamic> json) {
  return _ContactPerson.fromJson(json);
}

/// @nodoc
mixin _$ContactPerson {
  String get name => throw _privateConstructorUsedError;
  List<String>? get emailAddresses => throw _privateConstructorUsedError;
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactPersonCopyWith<ContactPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactPersonCopyWith<$Res> {
  factory $ContactPersonCopyWith(
          ContactPerson value, $Res Function(ContactPerson) then) =
      _$ContactPersonCopyWithImpl<$Res, ContactPerson>;
  @useResult
  $Res call(
      {String name, List<String>? emailAddresses, List<String>? phoneNumbers});
}

/// @nodoc
class _$ContactPersonCopyWithImpl<$Res, $Val extends ContactPerson>
    implements $ContactPersonCopyWith<$Res> {
  _$ContactPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddresses = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddresses: freezed == emailAddresses
          ? _value.emailAddresses
          : emailAddresses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactPersonCopyWith<$Res>
    implements $ContactPersonCopyWith<$Res> {
  factory _$$_ContactPersonCopyWith(
          _$_ContactPerson value, $Res Function(_$_ContactPerson) then) =
      __$$_ContactPersonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, List<String>? emailAddresses, List<String>? phoneNumbers});
}

/// @nodoc
class __$$_ContactPersonCopyWithImpl<$Res>
    extends _$ContactPersonCopyWithImpl<$Res, _$_ContactPerson>
    implements _$$_ContactPersonCopyWith<$Res> {
  __$$_ContactPersonCopyWithImpl(
      _$_ContactPerson _value, $Res Function(_$_ContactPerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddresses = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_$_ContactPerson(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddresses: freezed == emailAddresses
          ? _value._emailAddresses
          : emailAddresses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactPerson extends _ContactPerson {
  const _$_ContactPerson(
      {required this.name,
      final List<String>? emailAddresses,
      final List<String>? phoneNumbers})
      : _emailAddresses = emailAddresses,
        _phoneNumbers = phoneNumbers,
        super._();

  factory _$_ContactPerson.fromJson(Map<String, dynamic> json) =>
      _$$_ContactPersonFromJson(json);

  @override
  final String name;
  final List<String>? _emailAddresses;
  @override
  List<String>? get emailAddresses {
    final value = _emailAddresses;
    if (value == null) return null;
    if (_emailAddresses is EqualUnmodifiableListView) return _emailAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _phoneNumbers;
  @override
  List<String>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContactPerson(name: $name, emailAddresses: $emailAddresses, phoneNumbers: $phoneNumbers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactPerson &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._emailAddresses, _emailAddresses) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_emailAddresses),
      const DeepCollectionEquality().hash(_phoneNumbers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactPersonCopyWith<_$_ContactPerson> get copyWith =>
      __$$_ContactPersonCopyWithImpl<_$_ContactPerson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactPersonToJson(
      this,
    );
  }
}

abstract class _ContactPerson extends ContactPerson {
  const factory _ContactPerson(
      {required final String name,
      final List<String>? emailAddresses,
      final List<String>? phoneNumbers}) = _$_ContactPerson;
  const _ContactPerson._() : super._();

  factory _ContactPerson.fromJson(Map<String, dynamic> json) =
      _$_ContactPerson.fromJson;

  @override
  String get name;
  @override
  List<String>? get emailAddresses;
  @override
  List<String>? get phoneNumbers;
  @override
  @JsonKey(ignore: true)
  _$$_ContactPersonCopyWith<_$_ContactPerson> get copyWith =>
      throw _privateConstructorUsedError;
}
