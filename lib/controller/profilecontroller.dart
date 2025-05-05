import 'package:chat_app/model/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Profilecontroller extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  Rx<UserModel> currentuser = UserModel().obs;
  //
  void onInit() async {
    super.onInit();
    // await getusers();
  }

  Future<void> getusers() async {
    if (auth.currentUser == null) {
      print("No user is currently signed in.");
      return;
    }

    await db.collection('users').doc(auth.currentUser!.uid).get().then((value) {
      if (value.exists && value.data() != null) {
        currentuser.value = UserModel.fromJson(value.data()!);
      } else {
        print("User document not found or empty.");
      }
    });
  }
}
