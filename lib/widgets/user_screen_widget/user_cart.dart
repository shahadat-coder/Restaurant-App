import 'package:flutter/material.dart';

class UserCart extends StatelessWidget {
  const UserCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/translate.png'),
              SizedBox(
                width: 25,
              ),
              Text(
                ('Language'),
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 150,
              ),
              InkWell(
                onTap: () {},
                child: Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.grey.shade500,),)
            ]),
        SizedBox(height: 20,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/feed.png'),
              SizedBox(
                width: 25,
              ),
              Text(
                ('Feedback'),
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 150,
              ),
              InkWell(
                onTap: () {},
                child: Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.grey.shade500,),)
            ]),
        SizedBox(height: 20,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/star.png'),
              SizedBox(
                width: 25,
              ),
              Text(
                ('Rating us'),
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 150,
              ),
              InkWell(
                onTap: () {},
                child: Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.grey.shade500,),)
            ]),
        SizedBox(height: 20,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/vision.png'),
              SizedBox(
                width: 25,
              ),
              Text(
                ('New Version'),
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 130,
              ),
              InkWell(
                onTap: () {},
                child: Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.grey.shade500,),)
            ]),
      ],
    );
  }
}