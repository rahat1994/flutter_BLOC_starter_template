import 'package:flutter/material.dart';
import 'app_config.dart' as config;

ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: Colors.white,
  brightness: Brightness.light,
  accentColor: config.Colors().mainColor(1),
  focusColor: config.Colors().accentColor(1),
  hintColor: config.Colors().secondColor(1),
  textTheme: TextTheme(
    headline: TextStyle(fontSize: 20.0, color: config.Colors().secondColor(1)),
    display1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: config.Colors().secondColor(1)),
    display2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: config.Colors().secondColor(1)),
    display3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().mainColor(1)),
    display4: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w300, color: config.Colors().secondColor(1)),
    subhead: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: config.Colors().secondColor(1)),
    title: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: config.Colors().mainColor(1)),
    body1: TextStyle(fontSize: 12.0, color: config.Colors().secondColor(1)),
    body2: TextStyle(fontSize: 14.0, color: config.Colors().secondColor(1)),
    caption: TextStyle(fontSize: 12.0, color: config.Colors().accentColor(1)),
  ),
);
ThemeData darkTheme = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: Color(0xFF252525),
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF2C2C2C),
  accentColor: config.Colors().mainDarkColor(1),
  hintColor: config.Colors().secondDarkColor(1),
  focusColor: config.Colors().accentDarkColor(1),
  textTheme: TextTheme(
    headline: TextStyle(fontSize: 20.0, color: config.Colors().secondDarkColor(1)),
    display1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: config.Colors().secondDarkColor(1)),
    display2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: config.Colors().secondDarkColor(1)),
    display3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().mainDarkColor(1)),
    display4: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w300, color: config.Colors().secondDarkColor(1)),
    subhead: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: config.Colors().secondDarkColor(1)),
    title: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: config.Colors().mainDarkColor(1)),
    body1: TextStyle(fontSize: 12.0, color: config.Colors().secondDarkColor(1)),
    body2: TextStyle(fontSize: 14.0, color: config.Colors().secondDarkColor(1)),
    caption: TextStyle(fontSize: 12.0, color: config.Colors().secondDarkColor(0.6)),
  ),
);