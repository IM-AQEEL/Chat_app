import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  RxBool isloading = false.obs;
  //
  // For Login
  Future<void> login(String password, String email) async {
    isloading.value = true;
    try {
      //
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      if (e.code == 'Weak password ') {
        print('password provided was too weak');
      } else if (e.code == 'Password was already in use') {
        //
        print('The Account was already exist by this email');
      }
    } catch (e) {
      print(e);
    }
    isloading.value = false;
    print('Account login');
    Get.offAllNamed('/homePage');
  }

  // To create User
  Future<void> createUser(
    String email,
    String password,
    String username,
  ) async {
    try {
      //
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseException catch (e) {
      if (e.code == 'Weak password') {
        print('password provided was too weak');
      } else if (e.code == 'email-already-in-use') {
        print('The Account already exists with this email');
      }
      //Fire Base Exception
    } catch (e) {
      //For Whole Function Error
      print(e);
    }
    print('User Was created');
  }
}
