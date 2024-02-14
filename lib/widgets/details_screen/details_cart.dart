import 'package:flutter/material.dart';
import 'package:resturent_app/utils/colors.dart';

import '../../models/List_model.dart';

class DetailCart extends StatelessWidget {
  const DetailCart({
    super.key,
    required this.listModel,
  });

  final ListModel listModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(5, 5),
          ),],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ('${listModel.name}'),
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
                      ("${listModel.subtitle}"),
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 200,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.network(listModel.UrlImage,fit: BoxFit.fill,),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.alarm,size: 20,color: AppColors.greenColors,),
                        SizedBox(width: 5,),
                        Text(
                          ("Open today"),
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      ('10:00 AM - 12:00 PM'),
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/images/squre.png',height: 30,width: 30,),
                    SizedBox(width: 10,),
                    Text(
                      ('Visit the Restaurant'),
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}