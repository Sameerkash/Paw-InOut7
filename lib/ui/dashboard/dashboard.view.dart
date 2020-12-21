import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petme/ui/dashboard/gridDashboard.dart';
import 'package:petme/ui/dashboard/slider.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Slides(),
            Card(
              child: Column(children: [
                ListTile(
                  leading: Image.asset("assets/icons/pawprint.png"),
                  title: Text(
                    'Next visit to Veterinary',
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    '4th January 2021',
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                ),
              ]),
              color: Colors.amber[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            GridDashboard(),
          ],
        ),
      ),
    );
  }
}
