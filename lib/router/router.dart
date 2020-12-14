import 'package:auto_route/auto_route_annotations.dart';

import '../ui/app.view.dart';

@CupertinoAutoRouter(routes: <AutoRoute>[
  CupertinoRoute(page: AppView, initial: true),
], generateNavigationHelperExtension: true)
class $Router {}
