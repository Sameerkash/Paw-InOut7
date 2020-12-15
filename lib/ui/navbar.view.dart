import 'package:flutter/material.dart';

import 'adoption/adoptionlist.view.dart';
import 'drawer/drawer.view.dart';
import 'profile/profile.view.dart';

class NavBarView extends StatelessWidget {
  final List<Widget> views = [
    ProfileView(),
    Container(),
    AdoptionList(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return DrawerView(
      views: views,
    );
  }
}
