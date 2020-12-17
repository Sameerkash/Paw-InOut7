import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petme/ui/dashboard/gridDashboard.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shadowColor: Colors.grey[50],
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.004.sh,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://gifprint.s3.amazonaws.com/p/gif/85899/620deb3090970137d77a6e973b046fb4.gif'),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'My Pets',
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            width: 0.02.sw,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyPets()),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.004.sh,
                    ),
                  ],
                ),
              ),
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
      ),
    );
  }
}

class MyPets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          children: <Widget>[
            Container(
              color: Color(0xffffbaa5),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Benji',
                        style: GoogleFonts.audiowide(
                            textStyle: TextStyle(
                                color: Colors.black45,
                                fontSize: 65,
                                fontWeight: FontWeight.w800)),
                      ),
                      Image(
                        image: NetworkImage(
                            'https://thumbs.gfycat.com/AgileThoroughBarnacle-size_restricted.gif'),
                        height: 300,
                        width: 300,
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        // elevation: 18.0,
                        child: Column(children: [
                          ListTile(
                            leading: Image.asset("assets/icons/pawprint.png"),
                            title: Text(
                              'Intro',
                              style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            subtitle: Text(
                              'Birthday : 12th June\nBest Friend : Max\nFavorite Fruit : Apple',
                              style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'Meals',
                                  style: GoogleFonts.raleway(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                                Slider(
                                  value: 50,
                                  min: 0,
                                  max: 100,
                                  divisions: 5,
                                  activeColor: Colors.amber[200],
                                  inactiveColor: Colors.amber[100],
                                  onChanged: (double value) {},
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '0th Meal',
                                      style: GoogleFonts.raleway(
                                          textStyle: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    Text(
                                      '5th Meal',
                                      style: GoogleFonts.raleway(
                                          textStyle: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xffa0e0e5),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Bruno',
                    style: GoogleFonts.audiowide(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 65,
                            fontWeight: FontWeight.w800)),
                  ),
                  Image(
                    image: NetworkImage(
                        'https://media3.giphy.com/media/1zhaYhfLd3x0yVE3Bm/source.gif'),
                    height: 300,
                    width: 300,
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    // elevation: 18.0,
                    child: Column(children: [
                      ListTile(
                        leading: Image.asset("assets/icons/pawprint.png"),
                        title: Text(
                          'Intro',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          'Birthday : 12th June\nBest Friend : Max\nFavorite Fruit : Apple',
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
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              'Meals',
                              style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            Slider(
                              value: 50,
                              min: 0,
                              max: 100,
                              divisions: 5,
                              activeColor: Colors.amber[200],
                              inactiveColor: Colors.amber[100],
                              onChanged: (double value) {},
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '0th Meal',
                                  style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Text(
                                  '5th Meal',
                                  style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffffe548),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Pluto',
                    style: GoogleFonts.audiowide(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 65,
                            fontWeight: FontWeight.w800)),
                  ),
                  Image(
                    image: NetworkImage(
                        'https://media2.giphy.com/media/jswthjQUW9rTGe0aqQ/source.gif'),
                    height: 300,
                    width: 300,
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    // elevation: 18.0,
                    child: Column(children: [
                      ListTile(
                        leading: Image.asset("assets/icons/pawprint.png"),
                        title: Text(
                          'Intro',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          'Birthday : 12th June\nBest Friend : Max\nFavorite Fruit : Apple',
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
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              'Meals',
                              style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            Slider(
                              value: 50,
                              min: 0,
                              max: 100,
                              divisions: 5,
                              activeColor: Colors.amber[200],
                              inactiveColor: Colors.amber[100],
                              onChanged: (double value) {},
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '0th Meal',
                                  style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Text(
                                  '5th Meal',
                                  style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
