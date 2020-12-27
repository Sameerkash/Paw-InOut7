import 'package:flutter/material.dart';

final kTextFieldDecor = InputDecoration(
  filled: true,
  fillColor: Colors.amber.shade50,
  alignLabelWithHint: true,
  border: OutlineInputBorder(
      gapPadding: 0,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide.none),
);

final kMainTitle = TextStyle(
  fontSize: 40,
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

final kMainLoginTitle = TextStyle(
  color: Color(0xf0ff5252),
  fontSize: 45,
  fontWeight: FontWeight.w700,
);

final kTitle = TextStyle(
  color: Color(0xf0ff5252),
  fontSize: 23,
  fontWeight: FontWeight.w700,
);

final kTagTitle = TextStyle(
  fontSize: 18,
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

final kToggleSelected =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18);

final kToggleNotSelected = TextStyle(
    color: Color(0xffef9a9a), fontWeight: FontWeight.w700, fontSize: 18);

final kLabelStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
);

final kInfoText = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w600,
);

final kGenderSelected =
    TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 30);

final kGenderNotSelected = TextStyle(
    fontWeight: FontWeight.w700, color: Color(0xffef9a9a), fontSize: 30);

final kDateStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);

final kSearchFieldDecor = InputDecoration(
  alignLabelWithHint: true,
  hintText: 'Search Here',
  hintStyle: TextStyle(color: Colors.white70),
  border: InputBorder.none,
);
