import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:petme/widgets/image.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyProfileCard(),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.05.sw, vertical: 0.015.sh),
                child: AutoSizeText(
                  "Activity",
                  style: GoogleFonts.openSans(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[400]),
                ),
              ),
              ProfileImageCard(),
              SizedBox(
                height: 0.01.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileImageCard extends StatelessWidget {
  const ProfileImageCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey[50],
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[600],
              ),
            ),
          ),
          SizedBox(
            height: 0.004.sh,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileImageWidget(
                  height: 0.51.sh,
                  width: 0.4.sw,
                  imageURl: 'assets/images/i2.jpeg',
                ),
                SizedBox(
                  width: 0.02.sw,
                ),
                Column(
                  children: [
                    ProfileImageWidget(
                      height: 0.25.sh,
                      width: 0.4.sw,
                      imageURl: 'assets/images/i1.jpg',
                    ),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    ProfileImageWidget(
                      height: 0.25.sh,
                      width: 0.4.sw,
                      imageURl: 'assets/images/i3.jpg',
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.004.sh,
          ),
        ],
      ),
    );
  }
}

class MyProfileCard extends StatelessWidget {
  final String name;
  final String bio;
  final String imageURL;
  const MyProfileCard({
    Key key,
    this.name,
    this.bio,
    this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey[50],
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.04.sw),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Profile",
              style: GoogleFonts.openSans(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[400]),
            ),
            SizedBox(
              height: .03.sh,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 0.075.sh,
                    backgroundImage: AssetImage('assets/images/p1.jpg'),
                  ),
                  SizedBox(
                    height: .03.sh,
                  ),
                  Text(
                    "Anna Alvaardo",
                    style: GoogleFonts.openSans(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: .03.sh,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0.015.sw),
                    child: Text(
                      "Artist in the morning, Dancer by night, proud mom of Cookie 🐶",
                      style: GoogleFonts.openSans(
                          fontSize: 18, color: Colors.grey[500]),
                    ),
                  ),
                  SizedBox(
                    height: .03.sh,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      //   ),
    );
  }
}
