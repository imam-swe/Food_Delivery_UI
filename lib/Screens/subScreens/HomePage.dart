// ignore_for_file: unused_local_variable, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce_meal_monkey/Screens/widgets/home/headingRestaurants.dart';
import 'package:ecommerce_meal_monkey/Screens/widgets/home/Resturant_or_item_Category_list.dart';
import '../widgets/home/currentLocationBotton.dart';
import '../widgets/home/searchFoodTextField.dart';
// import "package:ecommerce_meal_monkey/styles/dimenssions.dart";
// import 'package:ecommerce_meal_monkey/styles/colors.dart';
import 'package:ecommerce_meal_monkey/styles/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Good morning Akila!"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.shoppingCart),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .78,
        width: MediaQuery.of(context).size.width,
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            child: currentLocationButton(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: searchFoodTextField(),
          ),
          SizedBox(
            height: kVerticalPadding,
          ),
          HomeCategoryList(),
//        SizedBox(
//          height: kVerticalPadding,
//        ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Popular Restaurants',
            ),
          ),
          PopulerRestaurantsCategoryList(),
          SizedBox(
            height: kVerticalPadding,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Most Popular',
            ),
          ),
          MostPopularList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Recent Items',
            ),
          ),
          RecentItems()
        ]),
      ),
    );
  }
}
