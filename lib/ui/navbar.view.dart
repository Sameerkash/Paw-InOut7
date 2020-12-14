import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petme/providers/app.provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:petme/ui/adoptionList.dart';

import '../providers/app.provider.dart';

class NavBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: FlatButton(
              child: Text("Adoption"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdoptionList()),
                );
              },
            ),
          ),
          Center(
            child: FlatButton(
              child: Text("LogOut"),
              onPressed: () {
                context.read(authProvider).signOut();
              },
            ),
          ),
        ],
      ),
    );
  }
}
