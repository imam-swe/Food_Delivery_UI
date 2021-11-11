// ignore_for_file: avoid_print, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_meal_monkey/Screens/subScreens/Detail_Food_Page.dart';
import 'package:ecommerce_meal_monkey/Screens/widgets/home/searchFoodTextField.dart';
import 'package:ecommerce_meal_monkey/model/Desserts_list_model.dart';

import 'package:ecommerce_meal_monkey/styles/styles.dart';

class Desserts extends StatefulWidget {
  const Desserts({Key? key}) : super(key: key);

  @override
  _DessertsState createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  bool state = true;
  Widget checkState() {
    if (state == true) {
      return main();
    } else {
      state = true;
      return Detail();
    }
  }

  @override
  Widget build(BuildContext context) {
    return checkState();
  }

  Widget main() {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: searchFoodTextField(),
          ),
          const SizedBox(
            height: 30,
          ),
          _dessertListView(),
        ],
      ),
    );
  }

  Widget _dessertListView() {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: kHorizontalPadding / 2,
        );
      },
      //padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: DessertsList.list.length,
      itemBuilder: (context, index) {
        DessertsList data = DessertsList.list[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                print("OK>>>>>>>>>>>>>>>>>>>>");
                setState(() {
                  state = false;
                });
              },
              child: Container(
                height: 210,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data.imagePath!.toString()),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        data.label!.toString(),
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: mainColor,
                            size: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              data.rating.toString(),
                              style: TextStyle(color: mainColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 2),
                            child: Text(
                              data.ratingTotal.toString(),
                              style: TextStyle(color: placeholderColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              ".",
                              style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2, right: 2),
                            child: Text(
                              data.label.toString(),
                              style: TextStyle(
                                  color: placeholderColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Image.asset(data.imagePath!.toString(),fit: BoxFit.fill),
//                  Container(
//                    width: MediaQuery.of(context).size.width,
//                    height: 700.h,
//                    decoration: BoxDecoration(
//                        image: DecorationImage(
//                            image: AssetImage(data.imagePath!.toString()),
//                            fit: BoxFit.cover),
//                        borderRadius: BorderRadius.circular(12),
//                        boxShadow: [
//                          BoxShadow(
//                            blurRadius: 5,
//                          )
//                        ]),
//                  ),
            SizedBox(
              height: 25.h,
            ),
          ],
        );
      },
    );
  }
}
