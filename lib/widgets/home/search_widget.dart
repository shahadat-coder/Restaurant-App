import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        fillColor: Colors.grey[200],
        //filled: true
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.5)
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black.withOpacity(0.5)
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black.withOpacity(0.5)
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}