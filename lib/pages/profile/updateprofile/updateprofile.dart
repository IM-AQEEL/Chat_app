import 'package:chat_app/config/colors.dart';
import 'package:chat_app/config/theme.dart';
import 'package:chow_button/chow_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Updateprofile extends StatelessWidget {
  const Updateprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(color: Colors.grey),
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.image, size: 40),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Personal Information',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            SizedBox(height: 10),

                            Text(
                              'Name',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),

                            TextField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: 'Enter name...',
                                prefixIcon: Icon(Icons.person),
                                filled: true,
                                fillColor:
                                    Theme.of(
                                      context,
                                    ).colorScheme.onPrimaryContainer,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            Text(
                              'Email Id',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),

                            TextField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: 'Enter email id...',
                                prefixIcon: Icon(Icons.email),
                                filled: true,
                                fillColor:
                                    Theme.of(
                                      context,
                                    ).colorScheme.onPrimaryContainer,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            Text(
                              'Phone Number',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),

                            TextField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: 'Enter phone Number...',
                                prefixIcon: Icon(Icons.phone),
                                filled: true,
                                fillColor:
                                    Theme.of(
                                      context,
                                    ).colorScheme.onPrimaryContainer,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 50.0),
                                child: InkWell(
                                  onTap: () {
                                    //
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Save',
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyLarge,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
