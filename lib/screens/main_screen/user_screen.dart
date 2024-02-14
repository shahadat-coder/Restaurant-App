import 'package:flutter/material.dart';
import 'package:resturent_app/widgets/custom_button.dart';
import 'package:resturent_app/widgets/user_screen_widget/user_cart.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
            child: Column(children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://lh3.googleusercontent.com/a/ACg8ocKy6t0yLrXhbbgFWWp8-60DpE9aG26R9kJkXAGD8Hc6Dg=s288-c-no'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            ('MD. Shahadat Hossain'),
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            ("mh4678483@gmail.com"),
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey.shade300,
                        child: const Icon(
                          Icons.notifications_none,
                          size: 20, // Adjust the size as needed
                          color: Colors.black, // Set the desired color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      Image.asset('assets/images/profile.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        ('Account setting'),
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/edit.png')),
                    ]),
                  )),
                   const SizedBox(height: 20,),
              Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: UserCart(),
                  )),
              const SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.red,
                  minimumSize: const Size(120, 50),
                ),
                child: const Text('Logout', style: TextStyle(fontSize: 17,color: Colors.white)),
              )
            ])));
  }
}


