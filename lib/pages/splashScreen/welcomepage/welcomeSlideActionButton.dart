import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:get/get.dart';

class Welcomeslideactionbutton extends StatelessWidget {
  const Welcomeslideactionbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          child: SlideAction(
            height: 60,
            sliderButtonIconSize: 30,

            innerColor: Theme.of(context).colorScheme.primary,
            outerColor: const Color.fromARGB(255, 129, 124, 124),

            sliderButtonIcon: const Icon(Icons.arrow_forward_ios),
            submittedIcon: Icon(
              Icons.thumb_up,
              color: Theme.of(context).colorScheme.primary,
            ),

            animationDuration: const Duration(milliseconds: 300),
            onSubmit: () {
              //
              Get.off('');
            },

            text: 'Slide to Next',
            textStyle: TextStyle(
              fontFamily: "Poppins",
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 16,
            ),

            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
