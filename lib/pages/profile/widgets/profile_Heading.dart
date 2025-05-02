import 'package:chat_app/config/AssetsImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileHeading extends StatelessWidget {
  const ProfileHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(140)),
          ),
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Center(
                child: SvgPicture.asset(
                  Assetsimages.manimage,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'aqeel123@gmmail.com',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Muhammad Aqeel',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_bubble_outline_sharp),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.toNamed('/updateprofile');
                    },
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
