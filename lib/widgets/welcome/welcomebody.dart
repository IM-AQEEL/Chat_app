import 'package:chat_app/config/AssetsImages.dart';
import 'package:chat_app/config/Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcomebody extends StatelessWidget {
  const Welcomebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: SvgPicture.asset(Assetsimages.manimage, height: 140)),

        SizedBox(height: 40),
        Text(
          AppStrings.NowYouAre,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          AppStrings.connected,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Text(
            textAlign: TextAlign.center,
            AppStrings.subtitle,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
