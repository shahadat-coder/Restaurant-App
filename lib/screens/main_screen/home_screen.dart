import 'package:flutter/material.dart';
import 'package:resturent_app/models/List_model.dart';
import 'package:resturent_app/widgets/home/arivable_row.dart';
import 'package:resturent_app/widgets/home/booking_row.dart';
import 'package:resturent_app/widgets/home/item_cart.dart';
import 'package:resturent_app/widgets/home/item_list.dart';
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
      backgroundColor: Colors.grey.shade200,
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
      body: const SingleChildScrollView(
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
          child: ItemCart(),
        ),
            SizedBox(height: 30,),
            BookingRow(),
            SizedBox(height: 15,),
            ItemList(),

          ],
        ),
      ),
    );
  }
}




