import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class PetsDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        PetDetailPage(),
        PetDetailPage(),
        PetDetailPage(),
      ],
    ));
  }
}

class PetDetailPage extends StatelessWidget {
  const PetDetailPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DetialsCards(),
            BirthdayTile(),
            HealthCard(),
            CheckUpCard(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: 0.2.sh,
                  child: Row(
                    children: [
                      //SvgPicture.asset('svg/018-dog-food.svg'),
                    ],
            FoodCard(),
            Container()
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final Function onTap;
  final String value;
  final String totalValue;
  const FoodCard({
    Key key,
    this.onTap,
    this.value,
    this.totalValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 0.2.sh,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 0.18.sh,
                width: 0.3.sw,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/pedigree.png',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "300g of 1200g remaining",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  InkWell(
                    onTap: onTap,
                    child: Row(
                      children: [
                        Icon(
                          MaterialCommunityIcons.cart,
                          color: Colors.amber[300],
                        ),
                        Text(
                          "Order Now",
                          style: Theme.of(context).textTheme.headline3.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CheckUpCard extends StatelessWidget {
  final Function onTap;
  final int data;
  const CheckUpCard({
    Key key,
    this.onTap,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 2,
        child: ListTile(
          onTap: onTap,
          leading: Icon(Icons.calendar_today),
          title: Text(
            "Last Checkup was 38 days ago",
            style: Theme.of(context).textTheme.bodyText2,
          ),
          subtitle: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Book an appointment",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(fontSize: 14),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: Colors.amber[400],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HealthCard extends StatelessWidget {
  const HealthCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 0.28.sh,
          width: 1.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Health",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CirluarData(
                        icon: MaterialCommunityIcons.water,
                        value: 50,
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Text("water",
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CirluarData(
                        icon: MaterialCommunityIcons.heart_pulse,
                        value: 82,
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Text("pulse",
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CirluarData(
                        icon: MaterialCommunityIcons.food_apple,
                        value: 30,
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Text("diet",
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CirluarData extends StatelessWidget {
  final IconData icon;
  final double value;
  const CirluarData({
    Key key,
    this.icon,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      innerWidget: (val) => Icon(
        icon,
        size: 35,
        color: Colors.amber[400],
      ),
      appearance: CircularSliderAppearance(
          size: 100,
          startAngle: 0,
          angleRange: 360,
          customWidths: CustomSliderWidths(
              // handlerSize: 15,
              progressBarWidth: 8,
              trackWidth: 8),
          customColors: CustomSliderColors(
            progressBarColor: Colors.amber[300],
            trackColor: Colors.amber[100],
          )),
      min: 10,
      max: 100,
      initialValue: value,
    );
  }
}

class DetialsCards extends StatelessWidget {
  const DetialsCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 0.12.sh,
        padding: EdgeInsets.all(10),
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
    );
  }
}

class BirthdayTile extends StatelessWidget {
  const BirthdayTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.02.sh),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.amber[300])),
        child: ListTile(
          leading: Icon(Icons.cake),
          title: Text(
            "Birthday in 56 days",
            style: Theme.of(context).textTheme.bodyText2,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_off),
          ),
        ),
      ),
    );
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
