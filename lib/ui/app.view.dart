import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:petme/ui/navbar.view.dart';

import '../providers/app.provider.dart';
import 'auth/auth.view.dart';

/// AppView to act as Landing page for  Authentication
///
/// isLoggedIn ? HomeView() : AuthView()
class AppView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final auth = useProvider(authProvider.state);
    return LayoutBuilder(
      builder: (context, _) {
        final size = MediaQuery.of(context).size;
        ScreenUtil.init(context,
            designSize: Size(size.width, size.height), allowFontScaling: true);
        return Scaffold(
          body: auth.map(
            loading: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            authenticated: (user) => NavBarView(),
            unAuthenticated: (_) => AuthView(),
          ),
        );
      },
    );
  }
}
