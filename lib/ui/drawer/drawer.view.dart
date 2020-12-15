import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final int index;

  const MenuItem(this.title, this.icon, this.index);
}

class DrawerView extends StatefulWidget {
  final List<Widget> views;
  const DrawerView({
    Key key,
    this.views,
  }) : super(key: key);
  @override
  _DrawerViewState createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  static List<MenuItem> mainMenu = [
    MenuItem(("Profile"), MaterialCommunityIcons.face_profile, 0),
    MenuItem(("Dashboard"), MaterialCommunityIcons.view_dashboard, 1),
    MenuItem(("My Pets"), FontAwesome.paw, 2),
    MenuItem(("Messages"), MaterialCommunityIcons.message, 3),
    MenuItem(("Settings"), Ionicons.ios_settings, 4),
  ];

  int currentIndex = 0;
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      menuScreen: MenuScreen(
        mainMenu,
        callback: (int val) {
          setState(() {
            currentIndex = val;
            _drawerController.toggle();
          });
        },
        current: currentIndex,
      ),
      mainScreen: MainScreen(views: widget.views, index: currentIndex),
      borderRadius: 24.0,
      showShadow: true,
      angle: 0.0,
      backgroundColor: Colors.grey[300],
      slideWidth: MediaQuery.of(context).size.width * .65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.fastOutSlowIn,
    );
  }
}

class MainScreen extends StatefulWidget {
  final List<Widget> views;
  final int index;
  const MainScreen({
    Key key,
    this.views,
    this.index,
  }) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final rtl = ZoomDrawer.isRTL();
    return ValueListenableBuilder<DrawerState>(
      valueListenable: ZoomDrawer.of(context).stateNotifier,
      builder: (context, state, child) {
        return AbsorbPointer(
          absorbing: state != DrawerState.closed,
          child: child,
        );
      },
      child: GestureDetector(
        child: Container(
          child: IndexedStack(
            index: widget.index,
            children: widget.views,
          ),
        ),
        onPanUpdate: (details) {
          if (details.delta.dx < 6 && !rtl || details.delta.dx < -6 && rtl) {
            ZoomDrawer.of(context).toggle();
          }
        },
      ),
    );
  }
}

class MenuScreen extends StatefulWidget {
  final List<MenuItem> mainMenu;
  final Function(int) callback;
  final int current;

  MenuScreen(
    this.mainMenu, {
    Key key,
    this.callback,
    this.current,
  });

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final widthBox = SizedBox(
    width: 16.0,
  );

  @override
  Widget build(BuildContext context) {
    final TextStyle androidStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white);
    final TextStyle iosStyle = const TextStyle(color: Colors.white);
    final style = kIsWeb
        ? androidStyle
        : Platform.isAndroid
            ? androidStyle
            : iosStyle;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber[400],
        ),
        child: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Spacer(),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       bottom: 24.0, left: 24.0, right: 24.0),
              //   child: Container(
              //     width: 80,
              //     height: 80,
              //     decoration: BoxDecoration(
              //       color: Colors.grey[300],
              //       shape: BoxShape.circle,
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(bottom: 0.08.sh, left: 24, right: 24.0),
                child: Text(
                  ("Paw"),
                  style: GoogleFonts.openSans(
                    fontSize: 25,
                    color: Colors.grey[200],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ...widget.mainMenu
                      .map((item) => MenuItemWidget(
                            key: Key(item.index.toString()),
                            item: item,
                            callback: widget.callback,
                            widthBox: widthBox,
                            style: style,
                            selected: widget.current == item.index,
                          ))
                      .toList()
                ],
              ),
              // Spacer(),
              // // Padding(
              // //   padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              // //   child: OutlineButton(
              // //     child: Padding(
              // //       padding: const EdgeInsets.all(8.0),
              // //       child: Text(
              // //         ("logout"),
              // //         style: TextStyle(fontSize: 18),
              // //       ),
              // //     ),
              //     borderSide: BorderSide(color: Colors.white, width: 2.0),
              //     onPressed: () => print("Pressed !"),
              //     textColor: Colors.white,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(16.0)),
              //   ),
              // ),
              // Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  final MenuItem item;
  final Widget widthBox;
  final TextStyle style;
  final Function callback;
  final bool selected;

  final white = Colors.white;

  const MenuItemWidget(
      {Key key,
      this.item,
      this.widthBox,
      this.style,
      this.callback,
      this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => callback(item.index),
      color: selected ? Colors.amber[200] : null,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            item.icon,
            color: white,
            size: 24,
          ),
          widthBox,
          Expanded(
            child: Text(
              item.title,
              style: style,
            ),
          )
        ],
      ),
    );
  }
}
