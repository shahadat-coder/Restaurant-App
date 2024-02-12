import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/utils/colors.dart';
import 'package:resturent_app/widgets/bottomSheet/create_account_screen.dart';
import 'package:resturent_app/widgets/bottomSheet/login_screen.dart';

import '../../utils/colors.dart';

class ButtonsheetWidget extends StatelessWidget {
  const ButtonsheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.9,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
              topRight: Radius.circular(20))
      ),
      child: ContainedTabBarView(
        tabs: [
          Text('Create Account', style: TextStyle(color: Colors.black)),
          Text('Login', style: TextStyle(color: Colors.black))
        ],
        views: const [
          CreateAccountScreen(),
          LoginScreen(),
        ],
        tabBarProperties: TabBarProperties(
            indicatorColor: AppColors.greenColors,
            labelColor: AppColors.greenColors,
            unselectedLabelColor: Colors.black,

        ),
        onChange: (index) => print(index),
      ),
    );
  }
}