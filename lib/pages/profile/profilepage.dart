import 'package:chat_app/pages/profile/widgets/profile_Descripaation.dart';
import 'package:chat_app/pages/profile/widgets/profile_Heading.dart';
import 'package:chat_app/pages/profile/widgets/profilebody.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ProfileHeading(),
            SizedBox(height: 10),
            Profilebody(),
            SizedBox(height: 20),
            ProfileDescripaation(),
          ],
        ),
      ),
    );
  }
}
