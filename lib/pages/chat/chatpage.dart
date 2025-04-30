import 'package:chat_app/pages/chat/chatBubble.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(40),
          ),

          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type a message...',
                hintStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 8, right: 12),
                  //Mic button
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic),
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    padding: EdgeInsets.zero,
                  ),
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Image Button
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.image_rounded),
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      padding: EdgeInsets.zero,
                    ),
                    // SizedBox(width: 5),
                    //Send Button
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send_sharp),
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

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
        child: ListView(
          children: [
            ChatBubble(
              message: 'Hello How are you',
              time: '11:00 Am',
              imageurl: '',
              isdeliver: true,
              isread: false,
              isComing: true,
            ),
            ChatBubble(
              message: 'Hello How are you I am Fine and what about you ',
              time: '11:00 Am',
              imageurl: '',
              isread: false,
              isdeliver: true,
              isComing: false,
            ),
            ChatBubble(
              message: 'Hello How are you I am Fine and what about you ',
              time: '11:00 Am',
              imageurl:
                  'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
              isread: false,
              isdeliver: true,
              isComing: false,
            ),
            ChatBubble(
              message: 'Hello How are you I am Fine and what about you ',
              time: '11:00 Am',
              imageurl:
                  'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
              isread: false,
              isdeliver: true,
              isComing: false,
            ),
            ChatBubble(
              message: 'Hello How are you I am Fine and what about you ',
              time: '11:00 Am',
              imageurl:
                  'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
              isread: false,
              isdeliver: true,
              isComing: false,
            ),
          ],
        ),
      ),
    );
  }
}
