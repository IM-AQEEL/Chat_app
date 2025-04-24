import 'package:chat_app/config/pagepath.dart';
import 'package:chat_app/config/theme.dart';
import 'package:chat_app/widgets/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pagepath,
      debugShowCheckedModeBanner: false,
      //theme: lighttheme,
      title: 'Flutter Demo',
      darkTheme: darktheme,
      themeMode: ThemeMode.dark,
      home: Welcome(),
    );
  }
}

//
