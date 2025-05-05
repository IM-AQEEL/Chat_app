import 'package:chat_app/config/AssetsImages.dart';
import 'package:chat_app/controller/profilecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UserProfileHeading extends StatelessWidget {
  const UserProfileHeading({super.key});

  @override
  Widget build(BuildContext context) {
    Profilecontroller profilecontroller = Get.put(Profilecontroller());

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(140),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Obx(() {
            final user = profilecontroller.currentuser.value;

            if (user == null) {
              return const CircularProgressIndicator(); // or SizedBox.shrink();
            }

            return Column(
              children: [
                Center(
                  child: SvgPicture.asset(
                    Assetsimages.manimage,
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  user.email ?? 'No email',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  user.name ?? 'No name',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline_sharp),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed('/updateprofile');
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
