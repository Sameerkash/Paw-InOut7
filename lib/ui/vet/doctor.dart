import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorView extends StatefulWidget {
  DoctorView({Key key}) : super(key: key);

  @override
  _DoctorViewState createState() => _DoctorViewState();
}

class _DoctorViewState extends State<DoctorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0xff, 248, 248, 248),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.amber[400],
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(
                              'images/sort.png',
                              color: Colors.white,
                              height: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // child: Image.asset(
                                //   'assets/images/person1.jpg',
                                //   height: 40,
                                // )
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 16, top: 32),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Find ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )),
                                TextSpan(
                                    text: "Your Pet ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ))
                              ]),
                            ),
                          )),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Doctor",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.only(top: 220, left: 16, right: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Looking for",
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 32, top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 150,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  color: Color.fromARGB(0xff, 248, 248, 248),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Icon(FontAwesomeIcons.dog),
                                  ),
                                )),
                            Text("Dog")
                          ],
                        ),
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 150,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  color: Color.fromARGB(0xff, 248, 248, 248),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Icon(FontAwesomeIcons.cat),
                                  ),
                                )),
                            Text("Cats")
                          ],
                        ),
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 150,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  color: Color.fromARGB(0xff, 248, 248, 248),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Icon(FontAwesomeIcons.earlybirds),
                                  ),
                                )),
                            Text("Birds")
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 32, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Top ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      TextSpan(
                          text: "Rated Doctor ",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            color: Colors.black,
                          )),
                    ])),
                  ),
                  Text("See All",
                      style: TextStyle(
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                color: Colors.white,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/doctor1.jpeg'),
                  ),
                  title: Text('Dr. Gulati Masiour',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text(
                    'Cat Specialist',
                  ),
                  trailing: Image.asset('assets/images/dots.png',
                      color: Colors.grey, height: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                color: Colors.white,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/doctor2.jpeg'),
                  ),
                  title: Text('Dr. Naila Nayem',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text(
                    'Dog Specialist',
                  ),
                  trailing: Image.asset('assets/images/dots.png',
                      color: Colors.grey, height: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
