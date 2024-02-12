import 'package:flutter/material.dart';
import 'package:resturent_app/utils/colors.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({Key? key, required this.title, required this.onTap, this.backgroundColor, this.titleColor}) : super(key: key);

  final String title;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? titleColor;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? AppColors.greenColors,
          borderRadius: BorderRadius.circular(15),
        ),
        child:  Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png',height: 20,width: 20,),
           SizedBox(width: 10,),
              Text(
                widget.title,
                style:  TextStyle(
                  color:widget.titleColor ?? AppColors.blackColors,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}