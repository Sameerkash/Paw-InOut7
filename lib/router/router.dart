import 'package:auto_route/auto_route_annotations.dart';

import '../ui/adoption/adoption.item.dart';
import '../ui/adoption/adoptionlist.view.dart';
import '../ui/app.view.dart';
import '../ui/auth/auth.view.dart';
import '../ui/messaging/message.detail.view.dart';

@CupertinoAutoRouter(routes: <AutoRoute>[
  CupertinoRoute(page: AppView, initial: true),
  CupertinoRoute(page: SignUpView),
  CupertinoRoute(page: AdoptionItem),
  CupertinoRoute(page: AdoptionList),
  CupertinoRoute(page: MessageDetailView),
], generateNavigationHelperExtension: true)
class $Router {}
