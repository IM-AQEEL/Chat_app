import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Authpagebody extends StatelessWidget {
  const Authpagebody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = false.obs;
    return Column(
      children: [
        Container(
          height: 335,
          width: 335,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    InkWell(
                      onTap: () {
                        isLogin.value = false;
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Login',
                              style:
                                  isLogin.value
                                      ? Theme.of(context).textTheme.bodySmall
                                      : Theme.of(context).textTheme.bodyLarge,
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),

                              height: 3,
                              width: isLogin.value ? 0 : 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isLogin.value = true;
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Sign up',
                              style:
                                  isLogin.value
                                      ? Theme.of(context).textTheme.bodyLarge
                                      : Theme.of(context).textTheme.bodySmall,
                            ),

                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: 3,
                              width: isLogin.value ? 100 : 0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
