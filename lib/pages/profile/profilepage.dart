import 'package:chat_app/pages/profile/widgets/profile_Descripaation.dart';
import 'package:chat_app/pages/profile/widgets/profile_Heading.dart';
import 'package:chat_app/pages/profile/widgets/profilebody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              child: IconButton(
                onPressed: () {
                  Get.toNamed('/welcome');
                },
                icon: Icon(Icons.logout),
              ),
            ),
          ),
        ],
      ),
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
