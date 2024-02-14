import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:resturent_app/screens/welcome/welcome_screen.dart';
import 'package:resturent_app/widgets/bolt_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          image: Image.asset(
            'assets/images/location.png',
            height: 350,
            width: 350,
          ),
          titleWidget: const BoldText(
            title: 'Nearby restaurants',
          ),
          body:
              "You don't have to go far to find a good restaurant,we have provided all the restaurants that is near you",
        ),
        PageViewModel(
          image: Image.asset(
            'assets/images/menu.png',
            height: 350,
            width: 350,
          ),
          titleWidget: const BoldText(
            title: 'Select the Favorites Menu',
          ),
          body:
              "Now eat well, don't leave the house,You can choose your favorite food only with one click",
        ),
        PageViewModel(
          image: Image.asset(
            'assets/images/food.png',
            height: 350,
            width: 350,
          ),
          titleWidget: const BoldText(
            title: 'Good food at a cheap price',
          ),
          body: "You can eat at expensive restaurants with affordable price",
        ),
      ],
      onDone: () async {
        SharedPreferences.getInstance().then((value) {
          value.setString('email', 'user@demo.com');
          value.setString('password', '12345678');
        });
        Get.to(const WelcomeScreen());
      },
      done: const Text(
        'Done',
        style: TextStyle(color: AppColors.greenColors),
      ),
      // onSkip: () {
      //
      // },
      showSkipButton: true,
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.black),
      ),
      showNextButton: true,
      next: const Icon(
        Icons.arrow_forward,
        color: AppColors.greenColors,
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: AppColors.greenColors,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      bodyPadding: const EdgeInsets.only(top: 150),
    );
  }
}
