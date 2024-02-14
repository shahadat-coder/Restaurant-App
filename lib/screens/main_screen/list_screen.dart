import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/models/List_model.dart';
import 'package:resturent_app/screens/main_screen/details_screen.dart';
import 'package:resturent_app/utils/colors.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              color: AppColors.greenColors,
            ),
            child: Center(
              child: Text('Booking History',style: TextStyle(
                color:  Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: (){
                      Get.to(DetailsScreen(listModel: list[index],));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Image.network(list[index].UrlImage,fit: BoxFit.fill,),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ("${list[index].name}"),
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on,size: 15,color: AppColors.greenColors,),
                                    Text(
                                      ("${list[index].subtitle}"),
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        primary: AppColors.greenColors,
                                        minimumSize: Size(50, 30),
                                      ),
                                      child: Text('Check', style: TextStyle(fontSize: 12,color: Colors.white)),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
             SizedBox(height: 15,),
             InkWell(
               onTap: (){},
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.add,size: 20,color: Colors.grey.shade500,),
                   Text('Booking More',style: TextStyle(
                     color:  Colors.grey.shade500,
                     fontSize: 17,
                     fontWeight: FontWeight.w500,
                   ),),

                 ],
               ),
             )
        ],
      ),
    );
  }
}
