// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthService on _AuthService, Store {
  Computed<User?>? _$userComputed;

  @override
  User? get user => (_$userComputed ??=
          Computed<User?>(() => super.user, name: '_AuthService.user'))
      .value;

  late final _$_firebaseUserAtom =
      Atom(name: '_AuthService._firebaseUser', context: context);

  @override
  auth.User? get _firebaseUser {
    _$_firebaseUserAtom.reportRead();
    return super._firebaseUser;
  }

  @override
  set _firebaseUser(auth.User? value) {
    _$_firebaseUserAtom.reportWrite(value, super._firebaseUser, () {
      super._firebaseUser = value;
    });
  }

  late final _$_AuthServiceActionController =
      ActionController(name: '_AuthService', context: context);

  @override
  void _updateUser(auth.User? firebaseUser) {
    final _$actionInfo = _$_AuthServiceActionController.startAction(
        name: '_AuthService._updateUser');
    try {
      return super._updateUser(firebaseUser);
    } finally {
      _$_AuthServiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
