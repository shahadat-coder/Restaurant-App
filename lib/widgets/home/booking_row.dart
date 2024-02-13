
import 'package:flutter/material.dart';
import 'package:resturent_app/utils/colors.dart';
import 'package:resturent_app/widgets/small_title.dart';

class BookingRow extends StatelessWidget {
  const BookingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Booking Restaurant',
                style: TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: AppColors.blackColors,

                ),
              ),
              SmallText(text: 'Check your city Near by Restaurant'),
            ],
          ),
          InkWell(
            onTap: () {},
            child: const Row(
              children: [
                SmallText(text: 'See All'),
                Icon(Icons.arrow_forward_ios_rounded,size: 18,),
              ],
            ),
          )
        ],
      ),
    );
  }
}