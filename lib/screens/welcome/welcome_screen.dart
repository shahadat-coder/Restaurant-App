import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/screens/bottomSheet/buttonsheet_widget.dart';
import 'package:resturent_app/screens/auth/login_screen.dart';
import 'package:resturent_app/utils/colors.dart';
import 'package:resturent_app/widgets/bolt_title.dart';
import 'package:resturent_app/widgets/custom_button.dart';
import 'package:resturent_app/widgets/small_title.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Image.asset('assets/images/welcome.png'),
            const BoldText(title: 'Welcome'),
            const SmallText(
                text:
                    'Before enjoying Food media services Please register first'),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                  title: 'Create Account',
                  titleColor: Colors.white,
                  onTap: () {
                    Get.bottomSheet(
                      const ButtonsheetWidget(),
                      isScrollControlled: true,
                    );

                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                  title: 'Login',
                  titleColor: AppColors.greenColors,
                  backgroundColor: AppColors.greenColors.withOpacity(0.2),
                  onTap: () {
                    const ButtonsheetWidget();
                  }),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                textAlign: TextAlign.center, // Add this line to center the text
                text: const TextSpan(
                  text: 'By logging in or registering, you have agreed to ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'The Terms And Conditions',
                      style: TextStyle(
                        color: AppColors.greenColors,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: AppColors.greenColors,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}


