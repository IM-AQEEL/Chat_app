import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TalkUP', style: Theme.of(context).textTheme.headlineSmall),
      ),

      body: Column(children: []),
    );
  }
}
