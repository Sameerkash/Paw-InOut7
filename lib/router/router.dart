import 'package:auto_route/auto_route_annotations.dart';
import 'package:petme/ui/adoption/adoption.item.dart';

import '../ui/app.view.dart';
import '../ui/auth/auth.view.dart';

@CupertinoAutoRouter(routes: <AutoRoute>[
  CupertinoRoute(page: AppView, initial: true),
  CupertinoRoute(page: SignUpView),
  CupertinoRoute(page: AdoptionItem),

], generateNavigationHelperExtension: true)
class $Router {}
