
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/screens/auth/login_screen.dart';
import 'package:resturent_app/screens/bottomSheet/buttonsheet_widget.dart';
import 'package:resturent_app/screens/welcome/welcome_screen.dart';
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
            const SizedBox(height: 150,),
            Image.asset('assets/images/success.png'),
            const SizedBox(height: 10,),
            const BoldText(title: 'Success'),
            const SizedBox(height: 10,),
            const SmallText(text: 'Please check your email for create a new password'),
            const SizedBox(height: 10,),
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
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(title: "Back Email", onTap: (){
               Get.offAll(const WelcomeScreen());
              }),
            ),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
