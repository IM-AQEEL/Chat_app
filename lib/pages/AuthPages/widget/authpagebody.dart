import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';

class AuthPageBody extends StatelessWidget {
  const AuthPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isLogin = true.obs;

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
              // Login Tab
              Obx(
                () => Expanded(
                  child: GestureDetector(
                    onTap: () => isLogin.value = true,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                isLogin.value
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontWeight:
                              isLogin.value
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                          color:
                              isLogin.value
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(
                                    context,
                                  ).colorScheme.onSurface.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Signup Tab
              Obx(
                () => Expanded(
                  child: GestureDetector(
                    onTap: () => isLogin.value = false,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                !isLogin.value
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Signup',
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontWeight:
                              !isLogin.value
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                          color:
                              !isLogin.value
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(
                                    context,
                                  ).colorScheme.onSurface.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
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

  Widget _buildLoginForm(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextField(
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
              Get.offAllNamed('/homePage');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'LOGIN',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignupForm(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextField(
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'SIGNUP',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
