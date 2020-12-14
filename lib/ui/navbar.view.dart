import 'package:flutter/material.dart';
import 'package:petme/providers/app.provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("LogOut"),
          onPressed: () {
            context.read(authProvider).signOut();
          },
        ),
      ),
    );
  }
}
