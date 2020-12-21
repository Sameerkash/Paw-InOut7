import 'package:flutter/material.dart';

import 'dashboard/dashboard.view.dart';
import 'drawer/drawer.view.dart';
import 'mate/matelist.dart';
import 'messaging/message.view.dart';
import 'pets/pets.view.dart';
import 'profile/profile.view.dart';

class NavBarView extends StatelessWidget {
  final List<Widget> views = [
    ProfileView(),
    DashBoard(),
    PetsView(),

    MessageView(),
    Mateview(),

    // Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return DrawerView(
      views: views,
    );
  }
}
