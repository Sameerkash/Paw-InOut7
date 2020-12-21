import 'package:flutter/material.dart';
import 'package:petme/utils/styles.dart';
import 'package:image_picker/image_picker.dart';

class AdoptionForm extends StatefulWidget {
  @override
  _AdoptionFormState createState() => _AdoptionFormState();
}

class _AdoptionFormState extends State<AdoptionForm> {
  var name = TextEditingController();
  var description = TextEditingController();
  var state = TextEditingController();
  var city = TextEditingController();
  var landmark = TextEditingController();
  var mobile;
  var breed = TextEditingController();
  bool isNumber = false;

  dynamic profile_pic = AssetImage('dog_1.png');
  var imageFile;
  _uploadImage() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      profile_pic = FileImage(imageFile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.amber[400],
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Add for Adoption',
                      style: kMainTitle,
                    ),
                    //Icon(Icons.favorite,color: Color(0xffc62828),)
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.02),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      vertical: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.19,
                                        child: Text(
                                          'Name',
                                          style: kLabelStyle,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Flexible(
                                        child: TextField(
                                          controller: name,
                                          textAlign: TextAlign.center,
                                          decoration: kTextFieldDecor.copyWith(
                                              hintText: "Enter the name"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      vertical: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.19,
                                        child: Text(
                                          'Contact Number',
                                          style: kLabelStyle,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Flexible(
                                        child: TextField(
                                          maxLength: 10,
                                          onChanged: (value) {
                                            mobile = value;
                                            if (value.length == 10) {
                                              setState(() {
                                                isNumber = true;
                                              });
                                            }
                                            if (value.length < 10) {
                                              setState(() {
                                                isNumber = false;
                                              });
                                            }
                                          },
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.phone,
                                          decoration: kTextFieldDecor.copyWith(
                                              hintText: '91XXXXXXXX',
                                              counterText: '',
                                              errorText: isNumber
                                                  ? null
                                                  : 'Please enter a 10 Digit Number'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      vertical: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.19,
                                        child: Text(
                                          'Breed',
                                          style: kLabelStyle,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Flexible(
                                        child: TextField(
                                          controller: breed,
                                          textAlign: TextAlign.center,
                                          decoration: kTextFieldDecor.copyWith(
                                            hintText: 'Breed',
                                            counterText: '',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      vertical: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.19,
                                        child: Text(
                                          'Landmark',
                                          style: kLabelStyle,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Flexible(
                                        child: TextField(
                                          controller: landmark,
                                          textAlign: TextAlign.center,
                                          decoration: kTextFieldDecor.copyWith(
                                            hintText:
                                                'Near hdfc bank , gandhi street',
                                            counterText: '',
                                            //errorText: isNumber?null:'Nearby landmark'
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      vertical: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.19,
                                        child: Text(
                                          'City',
                                          style: kLabelStyle,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Flexible(
                                        child: TextField(
                                          controller: city,
                                          textAlign: TextAlign.center,
                                          decoration: kTextFieldDecor.copyWith(
                                              hintText: 'Ex: Visakhapatnam'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      vertical: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.19,
                                        child: Text(
                                          'State',
                                          style: kLabelStyle,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Flexible(
                                        child: TextField(
                                          controller: state,
                                          textAlign: TextAlign.center,
                                          decoration: kTextFieldDecor.copyWith(
                                              hintText: 'Ex: Andhra Pradesh'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'More about the Pet',
                                        style: kLabelStyle,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      TextField(
                                        controller: description,
                                        textAlign: TextAlign.center,
                                        maxLines: 5,
                                        decoration: kTextFieldDecor.copyWith(
                                            hintText: 'About the pet...'),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                Center(
                                  child: FlatButton(
                                    child: Text('Select Image'),
                                    onPressed: () {
                                      _uploadImage();
                                    },
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Image(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        image: profile_pic,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () async {},
                                    child: Card(
                                      elevation: 15,
                                      color: Colors.amber[400],
                                      child: Padding(
                                        padding: EdgeInsets.all(13),
                                        child: Text(
                                          'Create',
                                          style: kGenderSelected.copyWith(
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
