import 'package:chat_app/config/AssetsImages.dart';
import 'package:chat_app/config/Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Headingpage extends StatelessWidget {
  const Headingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assetsimages.appIcon, height: 50, color: Colors.blue),
        SizedBox(height: 20),
        Text(
          AppStrings.appname,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }
}
