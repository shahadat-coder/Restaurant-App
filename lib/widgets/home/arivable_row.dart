
import 'package:flutter/material.dart';
import 'package:resturent_app/utils/colors.dart';
import 'package:resturent_app/widgets/small_title.dart';

class ArivableRow extends StatelessWidget {
  const ArivableRow({
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
                'Today New Arivable',
                style: TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: AppColors.blackColors,

                ),
              ),
              SmallText(text: 'Best of the today  food list update'),
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