import 'package:flutter/material.dart';

import 'package:petme/providers/app.provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:petme/ui/adoptionList.dart';
import 'package:petme/widgets/drawer.dart';

import 'package:petme/ui/pets/pets.view.dart';


import 'adoption/adoptionlist.view.dart';
import 'drawer/drawer.view.dart';
import 'profile/profile.view.dart';

class NavBarView extends StatelessWidget {
  final List<Widget> views = [
    ProfileView(),
    Container(),
    PetsView(),
    AdoptionList(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {

    return DrawerView(
      views: views,

    );
  }
}
