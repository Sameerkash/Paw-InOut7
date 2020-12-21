import 'package:flutter/material.dart';

import 'package:petme/ui/adoption/adoption.home.view.dart';

import 'package:petme/ui/pets/pets.view.dart';
import 'adoption/adoptionlist.view.dart';
import 'dashboard/dashboard.view.dart';
import 'drawer/drawer.view.dart';
import 'mate/matelist.dart';
import 'profile/profile.view.dart';

class NavBarView extends StatelessWidget {
  final List<Widget> views = [
    ProfileView(),
    DashBoard(),
    PetsView(),

    AdoptionHome(),
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
