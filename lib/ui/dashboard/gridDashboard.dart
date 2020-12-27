import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 =
      new Items(title: "Store", img: "assets/icons/cart.png", screen: '/Store');

  Items item2 = new Items(
      title: "Lost", img: "assets/icons/lost.png", screen: '/lost-view');

  Items item3 = new Items(
      title: "Adopt", img: "assets/icons/adopt.png", screen: '/adoption-home');

  Items item4 = new Items(
      title: "Vets", img: "assets/icons/vet.png", screen: '/doctor-view');
  Items item5 = new Items(
      title: "Mate", img: "assets/icons/heart.png", screen: '/Mateview');

  Items item6 = new Items(

      title: "Forum",
      img: "assets/icons/chat(1).png",
      screen: '/forum-page');


  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
    ];
    //var color = 0xffd6b3dd;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 14, right: 14, top: 10),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: myList.map((data) {
            return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Image.asset(
                        data.img,
                        width: 40,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        data.title,
                        style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                onTap: () => context.rootNavigator.push(data.screen));
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  String screen;
  Items({this.title, this.img, this.screen});
}
