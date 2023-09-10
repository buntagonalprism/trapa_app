// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthService on _AuthService, Store {
  Computed<String?>? _$authTokenComputed;

  @override
  String? get authToken =>
      (_$authTokenComputed ??= Computed<String?>(() => super.authToken,
              name: '_AuthService.authToken'))
          .value;

  late final _$userAtom = Atom(name: '_AuthService.user', context: context);

  @override
  User? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$_authTokenFutureAtom =
      Atom(name: '_AuthService._authTokenFuture', context: context);

  @override
  ObservableFuture<String?>? get _authTokenFuture {
    _$_authTokenFutureAtom.reportRead();
    return super._authTokenFuture;
  }

  @override
  set _authTokenFuture(ObservableFuture<String?>? value) {
    _$_authTokenFutureAtom.reportWrite(value, super._authTokenFuture, () {
      super._authTokenFuture = value;
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
user: ${user},
authToken: ${authToken}
    ''';
  }
}
