import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://assets.telegraphindia.com/telegraph/98b0be28-7e4f-427c-b582-a3324d2f448b.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff90b7e2),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://thumbs.gfycat.com/BelovedSarcasticGallowaycow-size_restricted.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.vrcmalvern.com/wp-content/uploads/2019/02/pet-diet.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'What\'s your pet\'s diet?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Choose nutritious food products',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    child: RaisedButton(
                        child: Text(
                          'Shop',
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Color(0xFF20124d),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        ),
                        color: Color(0xffc3aed6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Colors.black)),
                        onPressed: () => {}),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://barkingroyalty.com/wp-content/uploads/2017/01/how-to-train-dog-to-sit.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Here\'s how you can train Train your pet. Start early',
                      style: GoogleFonts.abel(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w800)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            height: 300.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
