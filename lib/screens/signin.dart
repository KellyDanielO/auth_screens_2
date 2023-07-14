import 'package:auth_screens/constants/colors.dart';
import 'package:auth_screens/screens/custombtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'signup.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObsecure = true;
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(
                    color: AppColors.color,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: height * .05),
                Container(
                  width: width * .9,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(69, 158, 158, 158),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextField(
                      style: TextStyle(color: AppColors.color, fontSize: 18),
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Email or username",
                        hintStyle:
                            TextStyle(color: AppColors.color, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * .02),
                Container(
                  width: width * .9,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(69, 158, 158, 158),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextField(
                      obscureText: isObsecure,
                      style:
                          const TextStyle(color: AppColors.color, fontSize: 18),
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            color: AppColors.color, fontSize: 18),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          icon: Icon(
                            isObsecure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.color,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * .01),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: checked,
                            onChanged: (value) {
                              setState(() {
                                checked = value;
                              });
                            },
                          ),
                          const Text(
                            "Remember me",
                            style:
                                TextStyle(color: AppColors.color, fontSize: 16),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgotten password?",
                          style:
                              TextStyle(color: AppColors.color, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * .01),
                CustomBtn(
                  width: width * .9,
                  text: "Sign In",
                  btnColor: AppColors.primaryColor,
                  btnTextColor: Colors.black,
                ),
                SizedBox(height: height * .02),
                GestureDetector(
                  onTap: () => Get.to(() => const SignUpScreen()),
                  child: CustomBtn(
                    width: width * .9,
                    text: "Create Account",
                    btnColor: AppColors.color,
                    btnTextColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
