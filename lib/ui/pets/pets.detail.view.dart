import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PetsDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            backgroundColor: Colors.amber[300],
            leading: SizedBox.shrink(),
            expandedHeight: 0.32.sh,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: AutoSizeText(
                "Maxiee",
                style: GoogleFonts.openSans(fontSize: 30),
                maxLines: 1,
              ),
              background: Image
                  // CachedNetworkImage
                  (
                image: AssetImage('assets/images/i1.jpg'),
                // imageUrl: widget.event.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // )
        ];
      },
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 0.12.sh,
              padding: EdgeInsets.all(5),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  PetdetailContainer(
                    label: "Age",
                    value: "1 Year",
                  ),
                  PetdetailContainer(
                    label: "Sex",
                    value: "Male",
                  ),
                  PetdetailContainer(
                    label: "Breed",
                    value: "Golden Retriver",
                  ),
                  PetdetailContainer(
                    label: "Color",
                    value: "Brunette",
                  ),
                  PetdetailContainer(
                    label: "Color",
                    value: "Brunette",
                  ),
                ],
              ),
            ),
          ),
          Container()
        ],
      ),
    ));
  }
}

class PetdetailContainer extends StatelessWidget {
  final String label;
  final String value;
  const PetdetailContainer({
    Key key,
    this.label,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.amber[200],
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 0.1.sh,
        width: 0.22.sw,
        alignment: Alignment.center,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: GoogleFonts.openSans(fontSize: 13, color: Colors.black54),
            ),
            SizedBox(height: 5),
            Expanded(
              child: AutoSizeText(
                value,
                style: GoogleFonts.openSans(),
                maxFontSize: 13,
                minFontSize: 9,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
