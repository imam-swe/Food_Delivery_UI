// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class searchFoodTextField extends StatelessWidget {
  const searchFoodTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
//          border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(200)
//          ),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search food'),
    );
  }
}
