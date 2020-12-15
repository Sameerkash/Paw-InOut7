import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import 'adoption/adoptionlist.view.dart';
import 'profile/profile.view.dart';

class NavBarView extends StatefulWidget {
  @override
  _NavBarViewState createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int selectedMenuItemId;

  List<Widget> views = [
    ProfileView(),
    Container(),
    AdoptionList(),
    Container(),
    Container(),
  ];

  @override
  void initState() {
    selectedMenuItemId = menu.items[0].id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      // appBar: AppBar(
      //   title: Text("Paw"),
      //   backgroundColor: Colors.amber[300],
      // ),
      drawers: [
        SideDrawer(
          percentage: 0.7,
          menu: menuWithIcon,
          direction: Direction.left,
          animation: true,
          drawerWidth: 220,
          color: Colors.amber[400],
          selectorColor: Colors.white,
          selectedItemId: selectedMenuItemId,
          onMenuItemSelected: (itemId) {
            setState(() {
              selectedMenuItemId = itemId;
            });
          },
        ),
      ],
      builder: (context, id) => IndexedStack(
        index: id,
        children: menu.items.map((e) => views[e.id]).toList(),
      ),
    );

    // Scaffold(
    //   body: Center(
    //     child: FlatButton(
    //       child: Text("LogOut"),
    //       onPressed: () {
    //         context.read(authProvider).signOut();
    //       },
    //     ),
    //   ),
    // );
  }
}
