
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/screens/bottomSheet/login_screen.dart';
import 'package:resturent_app/utils/colors.dart';
import 'package:resturent_app/widgets/bolt_title.dart';
import 'package:resturent_app/widgets/custom_button.dart';
import 'package:resturent_app/widgets/small_title.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150,),
            Image.asset('assets/images/success.png'),
            SizedBox(height: 10,),
            BoldText(title: 'Success'),
            SizedBox(height: 10,),
            SmallText(text: 'Please check your email for create a new password'),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                textAlign: TextAlign.center, // Add this line to center the text
                text: const TextSpan(
                  text: 'Remember the password?',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Resubmit',
                      style: TextStyle(
                        color: AppColors.greenColors,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(title: "Back Email", onTap: (){
                Get.to(const LoginScreen());
              }),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
