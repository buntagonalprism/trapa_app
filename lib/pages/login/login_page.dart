import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import '../../injection.dart';
import '../../router.dart';
import '../../services/crash_report_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      actions: [
        AuthStateChangeAction((context, state) {
          if (state is SigningIn) {
            return;
          }
          final user = switch (state) {
            SignedIn(user: final user) => user,
            CredentialLinked(user: final user) => user,
            UserCreated(credential: final cred) => cred.user,
            _ => null,
          };
          if (user != null) {
            getIt<AppRouter>().goToHome(context);
          } else {
            getIt<CrashReportService>().report(
              'Unexpected state returned from Firebase Sign In: $state',
              StackTrace.current,
            );
          }
        }),
      ],
    );
  }
}
