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
    await getusers();
  }

  Future<void> getusers() async {
    await db
        .collection('users')
        .doc(auth.currentUser!.uid)
        .get()
        .then(
          (value) => {currentuser.value = UserModel.fromJson(value.data()!)},
        );
  }
}
