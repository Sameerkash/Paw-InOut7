import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Container(
                height: 0.45.sh,
                width: 0.9.sw,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        MaterialCommunityIcons.alert,
                        size: 70,
                      ),
                      Text("I Lost My Pet",
                          style: Theme.of(context).textTheme.headline3),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                context.rootNavigator.push('/Lost');
              },
              child: Container(
                height: 0.45.sh,
                width: 0.9.sw,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        size: 70,
                      ),
                      Text("I Found a Missing Pet",
                          style: Theme.of(context).textTheme.headline3),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
