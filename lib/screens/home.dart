import 'package:auth_screens/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custombtn.dart';
import 'signin.dart';
import 'signup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                    color: AppColors.color,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: height * .05),
              GestureDetector(
                onTap: () => Get.to(() => const SignInScreen()),
                child: CustomBtn(
                  width: width * .8,
                  text: "Sign In",
                  btnTextColor: Colors.black,
                  btnColor: AppColors.color,
                ),
              ),
              SizedBox(height: height * .02),
              GestureDetector(
                onTap: () => Get.to(() => const SignUpScreen()),
                child: CustomBtn(
                  width: width * .8,
                  text: "Create Account",
                  btnTextColor: Colors.black,
                  btnColor: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
