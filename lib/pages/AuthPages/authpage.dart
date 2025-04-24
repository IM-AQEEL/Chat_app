import 'package:chat_app/pages/AuthPages/widget/authpagebody.dart';
import 'package:chat_app/widgets/welcome/headingpage.dart';
import 'package:flutter/material.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SafeArea(
              child: Column(
                children: [
                  Headingpage(),
                  SizedBox(height: 20),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Authpagebody()],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
