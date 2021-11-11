import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
