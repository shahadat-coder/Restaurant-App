import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturent_app/models/List_model.dart';
import 'package:resturent_app/screens/main_screen/details_screen.dart';
import 'package:resturent_app/utils/colors.dart';

class DetailsList extends StatelessWidget {
  const DetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
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
                          Row(
                            children: [
                              const Icon(Icons.location_on,size: 15,color: AppColors.greenColors,),
                              Text(
                                ("${list[index].subtitle}"),
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(width: 5,),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  primary: AppColors.greenColors,
                                  minimumSize: const Size(50, 30),
                                ),
                                child: const Text('Check', style: TextStyle(fontSize: 12,color: Colors.white)),
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
        });
  }
}