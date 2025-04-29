import 'package:chat_app/config/AssetsImages.dart';
import 'package:chat_app/pages/HomePage/widget_chat_page/chatTile.dart';
import 'package:flutter/material.dart';

class ChatPageBody extends StatelessWidget {
  const ChatPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      child: ListView(
        children: [
          Chattile(
            name: 'Muhammad Aqeel',
            message: 'Oye Kidr ho?',
            time: '10:00pm',
            image: Assetsimages.manimage,
          ),
          Chattile(
            name: 'Muhammad Ahmed',
            message: 'Hlo ?',
            time: '1:00pm',
            image: Assetsimages.manimage,
          ),
        ],
      ),
    );
  }
}
