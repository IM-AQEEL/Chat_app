import 'package:chat_app/config/pagepath.dart';
import 'package:chat_app/config/theme.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/pages/splashScreen/splashScreen.dart';
import 'package:chat_app/widgets/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pagepath,
      debugShowCheckedModeBanner: false,
      theme: lighttheme,
      title: 'Flutter Demo',
      darkTheme: darktheme,
      themeMode: ThemeMode.dark,
      home: Splashscreen(),
    );
  }
}

//
