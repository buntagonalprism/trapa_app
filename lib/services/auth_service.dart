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
  auth.User? _firebaseUser;

  @computed
  User? get user {
    final firebaseUser = _firebaseUser;
    if (firebaseUser != null) {
      return User(
        id: firebaseUser.uid,
        name: firebaseUser.displayName ?? '',
        email: firebaseUser.email,
      );
    } else {
      return null;
    }
  }

  Future<String?> getAuthToken() async {
    final firebaseUser = _firebaseUser;
    if (firebaseUser != null) {
      return firebaseUser.getIdToken();
    } else {
      return null;
    }
  }

  @action
  void _updateUser(auth.User? firebaseUser) {
    _firebaseUser = firebaseUser;
  }

  void signOut() {
    auth.FirebaseAuth.instance.signOut();
  }
}
