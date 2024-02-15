import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:resturent_app/googleMap/google_,ap.dart';
import 'package:resturent_app/models/List_model.dart';
import 'package:resturent_app/utils/colors.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
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
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ("${list[index].name}"),
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            InkWell(onTap: (){
                              Get.to(() => const GoogleMapScreen());
                                },child: const Icon(Icons.location_on,size: 15,color: AppColors.greenColors,)),
                            const SizedBox(width: 5,),
                            Text(
                              ("${list[index].subtitle}"),
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(width: 15,),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                primary: AppColors.greenColors,
                                minimumSize: const Size(50, 30),
                              ),
                              child: const Text('Book', style: TextStyle(fontSize: 12,color: Colors.white)),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}