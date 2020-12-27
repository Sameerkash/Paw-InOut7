import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class Lost extends StatefulWidget {
  @override
  _LostState createState() => _LostState();
}

class _LostState extends State<Lost> {
  String qrText;
  QRViewController controller;
  final firestore = FirebaseFirestore.instance;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      ); //forceWebView
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    //_launchURL("qrText");
    print(qrText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage('assets/images/gradient.png'),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Scan the QRcode',
                        style: TextStyle(fontSize: 35.0, color: Colors.white),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
                overlay: QrScannerOverlayShape(
                  borderColor: Color(0xffff9100),
                  borderRadius: 10,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: 300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) async {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      var qrText = scanData;
      List<String> qr = qrText.split('#');
      var petId = qr[0];
      var userId = qr[1];
      var user = await firestore.collection('users').doc(userId).get();
      var pet = await firestore.collection('petCategory').doc(petId).get();
      var petdata = pet.data();
      var userdata = user.data();
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Container(
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Positioned(
                      right: 0.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.close, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Text("Pet Belongs to ${userdata['userName']}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black)),
                    Text("Pet name : ${petdata['name']}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    Text("Address: ${userdata['adress']}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    FlatButton(
                        color: Colors.amber,
                        onPressed: () {
                          _launchURL('tel:${userdata['phone']}');
                        },
                        child: Text(
                          "Call",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ))
                  ],
                ),
              ),
            );
          });
      print(pet.data());
      print(user.data());
      // _launchURL(qrText);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
