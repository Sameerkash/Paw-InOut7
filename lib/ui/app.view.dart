import 'package:flutter/material.dart';

import 'auth/auth.view.dart';

/// AppView to act as Landing page for  Authentication
///
/// isLoggedIn ? HomeView() : AuthView()
class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthView(),
    );
  }
}
