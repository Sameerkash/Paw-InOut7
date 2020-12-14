import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auth/auth.view.dart';

/// AppView to act as Landing page for  Authentication
///
/// isLoggedIn ? HomeView() : AuthView()
class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, _) {
        final size = MediaQuery.of(context).size;
        ScreenUtil.init(context,
            designSize: Size(size.width, size.height), allowFontScaling: true);
        return Scaffold(
          body: AuthView(),
        );
      },
    );
  }
}
