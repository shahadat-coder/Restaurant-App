import 'package:flutter/material.dart';
import 'package:resturent_app/utils/colors.dart';
import 'package:resturent_app/utils/config.dart';
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
           SizedBox(height: 150,),
           Image.asset('assets/images/welcome.png'),
           BoldText(title: 'Welcome'),
           SmallText(text: 'Before enjoying Foodmedia services Please register first'),
           Spacer(),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: CustomButton(title: 'Create Account',
                 titleColor: Colors.white,
                 onTap: (){}
             ),
           ),
           SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: CustomButton(title: 'Login',
                 titleColor: AppColors.greenColors,
                 backgroundColor: AppColors.greenColors.withOpacity(0.2),
                 onTap: (){}
             ),
           ),
           const SizedBox(height: 15),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Align(
               alignment: Alignment.center,
               child: RichText(text: const TextSpan(
                   text: 'By Continuing to use ${AppConfig.appName}, you agree to our ',
                   style: TextStyle(
                       color: Colors.black
                   ),
                   children: [
                     TextSpan(
                         text: 'Privacy Policy',
                         style: TextStyle(
                             color: AppColors.greenColors,
                             fontWeight: FontWeight.w800
                         )
                     ),
                     TextSpan(
                       text: ' and ',
                       style: TextStyle(
                           color: Colors.black
                       ),
                     ),
                     TextSpan(
                         text: 'Terms of Service',
                         style: TextStyle(
                             color: AppColors.greenColors,
                             fontWeight: FontWeight.w800
                         )
                     ),
                   ]
               ),
               ),
             ),
           ),
           SizedBox(height: 50,)
         ],
        ),
      ),
    );
  }
}
