import 'package:chat_app/config/colors.dart';
import 'package:flutter/material.dart';

var lighttheme = ThemeData();
var darktheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    //
    primary: dprimaryColor,
    onPrimary: dbackgroundColor,
    background: dbackgroundColor,
    onBackground: donbackground,
    primaryContainer: dContainerColor,
    onPrimaryContainer: donContainerColor,
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      color: dprimaryColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w800,
    ),
    headlineMedium: TextStyle(
      fontSize: 30,
      color: dbackgroundColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      color: dprimaryColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    ),
  ),
);
