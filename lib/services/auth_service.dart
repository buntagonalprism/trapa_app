import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../models/user.dart';

part 'auth_service.g.dart';

@singleton
class AuthService = _AuthService with _$AuthService;

abstract class _AuthService with Store {
  _AuthService() {
    auth.FirebaseAuth.instance.authStateChanges().listen((auth.User? firebaseUser) {
      _updateUser(firebaseUser);
    });

    auth.FirebaseAuth.instance.idTokenChanges().listen((auth.User? firebaseUser) {
      _updateUser(firebaseUser);
    });
  }

  @observable
  User? user;

  @observable
  ObservableFuture<String?>? _authTokenFuture;

  @computed
  String? get authToken {
    final tokenFuture = _authTokenFuture;
    if (tokenFuture != null && tokenFuture.status == FutureStatus.fulfilled) {
      return tokenFuture.value;
    } else {
      return null;
    }
  }

  @action
  void _updateUser(auth.User? firebaseUser) {
    if (firebaseUser != null) {
      user = User(
        id: firebaseUser.uid,
        name: firebaseUser.displayName ?? '',
        email: firebaseUser.email,
      );
      _authTokenFuture = ObservableFuture(firebaseUser.getIdToken());
    } else {
      user = null;
      _authTokenFuture = null;
    }
  }

  void signOut() {
    auth.FirebaseAuth.instance.signOut();
  }
}
