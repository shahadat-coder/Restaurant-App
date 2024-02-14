import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/screens/main_screen/bottom_nav.dart';
import 'package:resturent_app/screens/password/forget_password.dart';
import 'package:resturent_app/utils/colors.dart';
import 'package:resturent_app/widgets/custom_button.dart';
import 'package:resturent_app/widgets/social_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> globalkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  String email = '';
  String pass = '';

  String validPass = '';
  String validUser = '';

  getUsernamePassword () {
    SharedPreferences.getInstance().then((value) {
      setState(() {
        validUser = value.getString('email') ?? '';
        validPass = value.getString('password') ?? '';
      });

      print('Valid user $validUser\nValid password $validPass');
    });
  }

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

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    return null;
  }

  void _submitForm() {
    if (globalkey.currentState!.validate()) {
      if (_emailController.text != validUser) {
        Get.snackbar('Invalid email', 'The email you entered is invalid');
        return;
      }

      if (_passController.text != validPass) {
        Get.snackbar('Invalid password', 'Account password is incorrect, Try again!');
        return;
      }

      // Everything is correct now navigate to home
      Get.to(const BottomNavBaseScreen());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsernamePassword();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
        child: Form(
          key: globalkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(height: 10,),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                controller: _emailController,
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
              const SizedBox(height: 8,),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    pass = value;
                  });
                },
                obscureText: true,
                controller: _passController,
                validator: _validatePassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Enter the password',
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){
                  Get.to(const ForgetPasswordScreen());
                },
                    child: const Text('Forget Password?',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.greenColors,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: CustomButton(
                  title: 'Login',
                  onTap: email.isEmpty || email.isEmpty || pass.isEmpty
                  ? null : _submitForm,
                  backgroundColor:
                  email.isEmpty || email.isEmpty || pass.isEmpty
                      ? AppColors.greenColors.withOpacity(.2)
                      : AppColors.greenColors,
                ),
              ),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  child: SocialButton(title: 'Sign up with google', onTap: () {},
                    backgroundColor: Colors.black.withOpacity(0.1),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
