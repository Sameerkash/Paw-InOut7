import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  Widget Items(String name, String category, String imgUrl, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 180.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              Image(
                image: NetworkImage(imgUrl),
                width: 170.0,
                height: 160.0,
                alignment: Alignment.center,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                category,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
              Text(
                "$price\ Rs.",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Color(
                      0xFFFF9900,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> ImgUrl = [
    "https://images-na.ssl-images-amazon.com/images/I/41iSjX7evDL._AC_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/71Nt3c7NRRL._SL1200_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/91P9esToEBL._AC_SX679_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/813syZZ6wwL._AC_SX679_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/81SdGNh6IxL._AC_SX679_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/81oGeDV3xeL._AC_SX679_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/51b5Z5TgaQL._SX420_BO1,204,203,200_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/71NQL9Nxf5L._AC_SL1500_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/91XC08YV4xL._AC_SL1500_.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Store",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.shopping_cart,
              color: Colors.amber,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search...",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "New Items",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 270.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Items("Seat Armour", "Pet Supplies", ImgUrl[0], "1600"),
                    Items("Biumpro Rub", "Care", ImgUrl[1], "220"),
                    Items("Pork Chops", "Pet Food", ImgUrl[2], "799"),
                    Items("Burt Bees lotion", "Care", ImgUrl[3], "300"),
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Recommended for you",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 270.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Items("Pet Oil", "Care", ImgUrl[4], "200"),
                    Items("Cushion", "Pet Supplies", ImgUrl[5], "2200"),
                    Items("Pet Guide", "Books", ImgUrl[6], "340"),
                    Items("Chipmunk Toy", "Toy", ImgUrl[7], "250"),
                    Items("Cat food container", "Supplies", ImgUrl[8], "150"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
