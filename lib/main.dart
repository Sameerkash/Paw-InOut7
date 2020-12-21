import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'ui/forum/forum_detail.dart';
import 'ui/lost/scanner.dart';
import 'ui/mate/matelist.dart';
import 'ui/vet/doctor.dart';

import 'router/router.gr.dart' as r;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paw',
      home: Container(),
      theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline3: GoogleFonts.openSans(
                color: Colors.amber[300],
                fontSize: 25,
                fontWeight: FontWeight.bold),
            bodyText1:
                GoogleFonts.openSans(color: Colors.grey[600], fontSize: 22),
            bodyText2:
                GoogleFonts.openSans(color: Colors.grey[600], fontSize: 17),
          )),
      //home: Lost(),
      builder: ExtendedNavigator.builder<r.Router>(router: r.Router()),
    );
  }
}
