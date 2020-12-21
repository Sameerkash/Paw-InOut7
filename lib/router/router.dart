import 'package:auto_route/auto_route_annotations.dart';
import 'package:petme/ui/forum/forum_detail.dart';
import 'package:petme/ui/lost/scanner.dart';

import '../ui/adoption/adoption.home.view.dart';
import '../ui/adoption/adoption.item.dart';
import '../ui/adoption/adoptionlist.view.dart';
import '../ui/app.view.dart';
import '../ui/auth/auth.view.dart';
import '../ui/lost/lost.view.dart';
import '../ui/mate/matelist.dart';
import '../ui/messaging/message.detail.view.dart';
import '../ui/store/store.view.dart';
import '../ui/vet/doctor.dart';

@CupertinoAutoRouter(routes: <AutoRoute>[
  CupertinoRoute(page: AppView, initial: true),
  CupertinoRoute(page: SignUpView),
  CupertinoRoute(page: AdoptionItem),
  CupertinoRoute(page: AdoptionList),
  CupertinoRoute(page: MessageDetailView),
  CupertinoRoute(page: LostView),
  CupertinoRoute(page: Store),
  CupertinoRoute(page: DoctorView),
  CupertinoRoute(page: AdoptionHome),
  CupertinoRoute(page: Mateview),
  CupertinoRoute(page: ForumDetailPage),
  CupertinoRoute(page: Lost),


], generateNavigationHelperExtension: true)
class $Router {}
