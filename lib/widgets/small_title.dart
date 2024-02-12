import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text( text,
      textAlign: TextAlign.center,
    );
  }
}