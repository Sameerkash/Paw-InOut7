import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const blueColor = Color(0xFF5d4cdf);
const cardbgColor = Color(0xFFefebfb);
const iconColor = Color(0xFFb5abea);
const bgColor = Color(0xFFcdcae5);
const lightPurple = Color(0xFFccc6ed);

final theme = ThemeData(
  primaryColor: blueColor,
  accentColor: lightPurple,
  fontFamily: 'Georgia',
  textTheme: TextTheme(
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
  ),
);
