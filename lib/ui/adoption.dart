import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AdoptionList extends StatefulWidget {
  @override
  _AdoptionListState createState() => _AdoptionListState();
}

class _AdoptionListState extends State<AdoptionList> {
  _card() {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
//        alignment: AlignmentDirectional.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    'Sola',
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    'Abissynian cat',
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    '2 years old',
                    textDirection: TextDirection.ltr,
                  ),
//                  Row(
//                    children: [Icon(Icons.add_location)],
//                  )
                ],
              ),
            )
          ],
        ),
        Container(
//          child: Image.asset("assets/images/dog1.jfif"),
            )
      ],
    );
  }
}
