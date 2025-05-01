// splash_controller.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    splashHandle();
  }

  Future<void> splashHandle() async {
    await Future.delayed(const Duration(seconds: 2));
    final user = auth.currentUser;
    Get.offAllNamed(user != null ? '/homepage' : '/welcome');
    print(auth.currentUser);
  }
}
