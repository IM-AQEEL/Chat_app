import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:chat_app/config/AssetsImages.dart';

class PersonProfile extends StatelessWidget {
  PersonProfile({super.key});

  final RxBool isEdit = false.obs;

  final TextEditingController name = TextEditingController(text: 'Ali Hassan');
  final TextEditingController email = TextEditingController(
    text: 'aihassan@gmail.com',
  );
  final TextEditingController number = TextEditingController(
    text: '0321340333',
  );
  final TextEditingController about = TextEditingController(
    text: 'Work hard untill you will susceed',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        Assetsimages.manimage,
                        height: 140,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: name,
                      readOnly: !isEdit.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: "Name",
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: email,
                      readOnly: !isEdit.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: about,
                      readOnly: !isEdit.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.info),
                        labelText: "About",
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: number,
                      readOnly: !isEdit.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.phone),
                        labelText: "Phone Number",
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: TextButton(
                          onPressed: () {
                            isEdit.value = !isEdit.value;
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                isEdit.value ? Icons.save : Icons.edit,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                isEdit.value ? 'Save' : 'Edit',
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
