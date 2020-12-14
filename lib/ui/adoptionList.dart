import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petme/ui/adoptionItem.dart';

class AdoptionList extends StatefulWidget {
  @override
  _AdoptionListState createState() => _AdoptionListState();
}

class _AdoptionListState extends State<AdoptionList> {
  _card() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AdoptionItem()));
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
                                  Icon(FontAwesomeIcons.venus)
                                ],
                              ),
                              Text(
                                'Abissynian cat',
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
                  color: Colors.purple.shade100,
                ),
              ),
              Image(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  image: AssetImage("assets/images/dog_2.png"))
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
          automaticallyImplyLeading: false,
        ),
        body: _card());
  }
}
