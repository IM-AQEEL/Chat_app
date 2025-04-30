import 'package:chat_app/controller/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPageBody extends StatelessWidget {
  AuthPageBody({super.key});

  final AuthController authController = Get.put(AuthController());
  final TextEditingController loginemail = TextEditingController();
  final TextEditingController loginpassword = TextEditingController();
  final TextEditingController signupemail = TextEditingController();
  final TextEditingController signupusername = TextEditingController();
  final TextEditingController signuppassword = TextEditingController();
  final isLogin = true.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          // Tab Bar
          Row(
            children: [
              Obx(
                () => _buildAuthTab(
                  context: context,
                  label: 'Login',
                  isSelected: isLogin.value,
                  onTap: () => isLogin.value = true,
                ),
              ),
              Obx(
                () => _buildAuthTab(
                  context: context,
                  label: 'Signup',
                  isSelected: !isLogin.value,
                  onTap: () => isLogin.value = false,
                ),
              ),
            ],
          ),

          // Form Content
          Expanded(
            child: Obx(
              () => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                    isLogin.value
                        ? _buildLoginForm(context)
                        : _buildSignupForm(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAuthTab({
    required BuildContext context,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color:
                    isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color:
                  isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(
                        context,
                      ).colorScheme.onSurface.withOpacity(0.6),
            ),
          ),
        ),
      ),
    );
  }

  /// Login Form

  Widget _buildLoginForm(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextField(
          controller: loginemail,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: loginpassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 140,
          child: ElevatedButton(
            onPressed: () {
              if (loginemail.text.isEmpty || loginpassword.text.isEmpty) {
                Get.snackbar('Error', 'Please fill all fields');
                return;
              }
              authController.login(loginemail.text, loginpassword.text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Obx(
              () => Center(
                child:
                    authController.isloading.value
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Sign Up Form
  Widget _buildSignupForm(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextField(
          controller: signupemail,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: signupusername,
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: signuppassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 140,
          child: ElevatedButton(
            onPressed: () {
              if (signupemail.text.isEmpty ||
                  signupusername.text.isEmpty ||
                  signuppassword.text.isEmpty) {
                Get.snackbar('Error', 'Please fill all fields');
                return;
              }
              authController.createUser(
                signupemail.text,
                signupemail.text,
                signupusername.text,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Obx(
              () => Center(
                child:
                    authController.isloading.value
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
                          'SIGNUP',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
