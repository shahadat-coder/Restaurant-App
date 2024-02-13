import 'package:flutter/material.dart';
import 'package:resturent_app/models/List_model.dart';
import 'package:resturent_app/widgets/home/arivable_row.dart';
import 'package:resturent_app/widgets/home/booking_row.dart';
import 'package:resturent_app/widgets/home/search_widget.dart';
import '../../models/home_model.dart';
import '../../utils/colors.dart';
import '../../widgets/home/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
        title: const Row(
          children: [
            Icon(Icons.location_on_rounded, color: AppColors.greenColors, size: 20,),
            SizedBox(width: 10,),
            Text(
              'Agrabad 435, Chittagong',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            SizedBox(width: 80,),
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/ACg8ocKy6t0yLrXhbbgFWWp8-60DpE9aG26R9kJkXAGD8Hc6Dg=s288-c-no'),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: HomeSearchField(),
            ),
            SizedBox(height: 15,),
            HomeCarouselSlider(slides: [
              {'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFb-QOETAw_2smnhPtCqsh8A1KTeBnpYEBTQ&usqp=CAU',},
              {'imageUrl': 'https://images.deliveryhero.io/image/fd-bd/Products/4797334.jpg?width=%s',},
              {'imageUrl': 'https://spoonsofflavor.com/wp-content/uploads/2020/08/Easy-Chicken-Fry-Recipe-500x375.jpg',},
              {'imageUrl': 'https://elavegan.com/wp-content/uploads/2021/10/hand-stirring-creamy-tomato-sauce-vegetable-pasta-in-black-skillet-500x375.jpg',},
            ],),
            SizedBox(height: 20,),
            ArivableRow(),
            SizedBox(height: 20,),
        SizedBox(
          height: 175,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: carts.length,
            itemBuilder: (BuildContext context, int index) {
              return  Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: SizedBox(
                  width: 150,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(carts[index].UrlImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ("${carts[index].name}"),
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                            ("${carts[index].subtitle}"),
                                maxLines: 2,
                                style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                            ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
            SizedBox(height: 30,),
            BookingRow(),
            SizedBox(height: 15,),
            ListView.builder(
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
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
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
                                      child: Text('Book', style: TextStyle(fontSize: 12,color: Colors.white)),
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
                })

          ],
        ),
      ),
    );
  }
}
