import 'package:chat_app/config/AssetsImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Chattile extends StatelessWidget {
  const Chattile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Assetsimages.manimage, height: 50),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Muhammad Aqeel',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Kya hal Hai Aqeel Bhai Apka ?',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Text('10:00pm', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
