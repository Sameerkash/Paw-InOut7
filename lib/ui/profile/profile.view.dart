import 'package:animations/animations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/user/user.dart';
import '../../widgets/image.dart';
import 'edit.profile.view.dart';
import 'profile.vm.dart';

final profileProvider = StateNotifierProvider<ProfileVM>((ref) {
  return ProfileVM(ref);
});

/// [ProfileView] for user Profile
class ProfileView extends HookWidget {
  final List<Widget> pageList = <Widget>[
    ProfileScrollView(),
    EditProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    var index = useState(0);

    final profile = useProvider(profileProvider.state);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              index.value == 0 ? index.value = 1 : index.value = 0;
            },
            icon: Icon(
              index.value == 0
                  ? Icons.edit
                  : MaterialCommunityIcons.face_profile,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: profile.when(
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        loaded: (profile) => PageTransitionSwitcher(
            transitionBuilder: (
              Widget child,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return FadeThroughTransition(
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: index.value == 0
                ? ProfileScrollView(
                    profile: profile,
                  )
                : EditProfileView(
                    profile: profile,
                  )),
        error: (_) => Center(
          child: Text(""),
        ),
      ),
    );
  }
}

class ProfileScrollView extends StatelessWidget {
  final AppUser profile;
  const ProfileScrollView({
    Key key,
    this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyProfileCard(
              name: profile.userName,
              bio: profile.bio,
              imageURL: profile.imageUrl,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.015.sh),
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
                  fontSize: 28,
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
                  if (imageURL == null)
                    CircleAvatar(
                      radius: 0.075.sh,
                      // backgroundColor: Colors.red,
                    ),
                  if (imageURL != null)
                    CachedNetworkImage(
                      imageUrl: imageURL,
                      errorWidget: (err, _, __) => CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                      imageBuilder: (_, img) {
                        return CircleAvatar(
                          radius: 0.075.sh,
                          backgroundImage: img,
                        );
                      },
                    ),
                  SizedBox(
                    height: .03.sh,
                  ),
                  AutoSizeText(
                    "$name",
                    style: GoogleFonts.openSans(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                    minFontSize: 18,
                  ),
                  SizedBox(
                    height: .03.sh,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0.015.sw),
                    child: Text(
                      bio == null ? "Add a Bio" : "$bio",
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
