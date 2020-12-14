import 'package:drawerbehavior/drawerbehavior.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';

List<MenuItem> items = [
  new MenuItem<int>(
    id: 0,
    title: 'Profile',
    icon: Ionicons.ios_person,
  ),
  new MenuItem<int>(
    id: 1,
    title: 'DashBoard',
    icon: MaterialCommunityIcons.view_dashboard,
  ),
  new MenuItem<int>(
    id: 2,
    title: 'My Pets',
    icon: FontAwesome.paw,
  ),
  new MenuItem<int>(
    id: 3,
    title: 'Messages',
    icon: MaterialCommunityIcons.message,
  ),
  new MenuItem<int>(
    id: 4,
    title: 'Settings',
    icon: Ionicons.ios_settings,
  ),
];
final menu = Menu(
  items: items.map((e) => e.copyWith(icon: null)).toList(),
);

final menuWithIcon = Menu(
  items: items,
);
