import 'package:chat_app/pages/chat/chatBubble.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
              ],
            ),
          ),
        ],
        leadingWidth: 80,
        leading: Row(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Icon(Icons.arrow_back_ios_new),
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 20,
              child: Icon(Icons.person),
              backgroundColor: Colors.blueGrey,
            ),
          ],
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Muhammad Aqeel'),
            Text(
              textAlign: TextAlign.start,
              'Online',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [ChatBubble(message: 'Hello How are you', time: '13:00')],
        ),
      ),
    );
  }
}
