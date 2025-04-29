import 'package:chat_app/config/colors.dart';
import 'package:flutter/material.dart';

var lighttheme = ThemeData();
var darktheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: dContainerColor,
    titleTextStyle: TextStyle(
      fontSize: 20,

      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.dark(
    //
    primary: dprimaryColor,
    onPrimary: dbackgroundColor,
    surface: dbackgroundColor,
    onSurface: donbackground,
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
    bodyLarge: TextStyle(
      fontSize: 15,
      color: donbackground,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
      color: donContainerColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500,
    ),
  ),
);
