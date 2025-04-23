import 'package:chat_app/pages/splashScreen/welcomepage/welcomeSlideActionButton.dart';
import 'package:chat_app/pages/splashScreen/welcomepage/welcomebody.dart';
import 'package:chat_app/widgets/welcome/headingpage.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Headingpage(),
              SizedBox(height: 80),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Welcomebody(),
                  SizedBox(height: 50),
                  Welcomeslideactionbutton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
