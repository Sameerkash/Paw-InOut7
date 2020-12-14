import 'package:auto_route/auto_route_annotations.dart';

import '../ui/app.view.dart';
import '../ui/auth/auth.view.dart';

@CupertinoAutoRouter(routes: <AutoRoute>[
  CupertinoRoute(page: AppView, initial: true),
  CupertinoRoute(page: SignUpView),
], generateNavigationHelperExtension: true)
class $Router {}
