import 'package:chat_app/controller/AuthController.dart';
import 'package:chat_app/pages/Userprofile/widgets/User_profile_Heading.dart';
import 'package:chat_app/pages/Userprofile/widgets/User_profilebody.dart';
import 'package:chat_app/pages/Userprofile/widgets/user_profile_Descripaation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfilepage extends StatelessWidget {
  const UserProfilepage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              child: IconButton(
                onPressed: () {
                  authController.signout();
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
            UserProfileHeading(),
            SizedBox(height: 10),
            UserProfilebody(),
            SizedBox(height: 20),
            UserProfileDescripaation(),
          ],
        ),
      ),
    );
  }
}
