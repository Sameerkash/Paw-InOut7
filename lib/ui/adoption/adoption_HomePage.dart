import 'package:flutter/material.dart';
import 'package:petme/ui/adoption/adoptionlist.view.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class AdoptionHomePage extends StatefulWidget {
  @override
  _AdoptionHomePageState createState() => _AdoptionHomePageState();
}

class _AdoptionHomePageState extends State<AdoptionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/adoption_homepage.png"),
              fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SwipingButton(
                text: "Swipe to Adopt",
                height: 40,
                onSwipeCallback: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdoptionList()));
                }),
          ],
        ),
      ),
    );
  }
}
