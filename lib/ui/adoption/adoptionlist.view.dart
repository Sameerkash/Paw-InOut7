import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class AdoptionList extends StatefulWidget {
  @override
  _AdoptionListState createState() => _AdoptionListState();
}

class _AdoptionListState extends State<AdoptionList> {
  _card(String image) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          context.rootNavigator.push('/adoption-item');
        },
        child: Stack(
//        alignment: AlignmentDirectional.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Sola',
//                              textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.grey.shade700),
                                  ),
                                  Icon(FontAwesome.venus)
                                ],
                              ),
                              Text(
                                'Golden Retriver',
//                              textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey.shade700),
                              ),
                              Text(
                                '2 years old',
//                              textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey.shade700),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(width: 20),
                                  Text(
                                    'Distance 3.6km',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.shade700),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(children: [
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.amber.shade100,
                ),
              ),
              Image(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  image: AssetImage(image))
            ])
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Adopt",
            style: GoogleFonts.openSans(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.amber[300],
          // automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _card("assets/images/dog_2.png"),
                _card("assets/images/dog_1.png"),
                _card("assets/images/dog_1.png"),
                _card("assets/images/dog_2.png"),
              ],
            ),
          ),
        ));
  }
}
