import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/screens/auth/login_screen.dart';
import 'package:resturent_app/utils/colors.dart';
import 'package:resturent_app/widgets/bolt_title.dart';
import 'package:resturent_app/widgets/custom_button.dart';
import 'package:resturent_app/widgets/small_title.dart';

import 'success_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  String email = '';

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an Email';
    }
    RegExp emailReg = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailReg.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const BoldText(title: 'Forget Password'),
          const SmallText(text: 'Enter your registered email below'),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Email Address',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
            validator: _validateEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Eg namaemail@emailkamu.com',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.black87, // Change border color here
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.black87, // Change border color here
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RichText(
              textAlign: TextAlign.center,
              // Add this line to center the text
              text: const TextSpan(
                text: 'Remember the password?',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: ' Sign in',
                    style: TextStyle(
                      color: AppColors.greenColors,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              title: 'Submit',
              onTap: () {
                if (!email.isEmpty) {
                  Get.to(LoginScreen());
                }
              },
              backgroundColor: email.isEmpty
                  ? AppColors.greenColors.withOpacity(.2)
                  : AppColors.greenColors,
            ),
          ),
        ]),
      ),
    );
  }
}
