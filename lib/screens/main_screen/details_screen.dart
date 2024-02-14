import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/screens/main_screen/list_screen.dart';
import 'package:resturent_app/widgets/custom_button.dart';
import 'package:resturent_app/widgets/details_screen/details_cart.dart';
import 'package:resturent_app/widgets/details_screen/details_list.dart';
import 'package:resturent_app/widgets/details_screen/hotel_name_row.dart';

import '../../models/List_model.dart';
import '../../utils/colors.dart';

class DetailsScreen extends StatelessWidget {
  final ListModel listModel ;
  const DetailsScreen({Key? key, required this.listModel, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greenColors,
        title: const Text('Details Restaurant',style: TextStyle(
          fontSize: 16,
          color: Colors.white
        ),),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.off(const ListScreen());
        },
            icon: const Icon(Icons.arrow_back,color: Colors.white,))
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailCart(listModel: listModel),
              Container(
                height: 10,
                width: double.infinity,
                color: Colors.grey.shade200,
              ),
              const RestuarantNameRow(),
              const DetailsList(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomButton(title: 'Booking', onTap:(){}),
              )
            ],
          ),
        ),
      ),
    );
  }
}

