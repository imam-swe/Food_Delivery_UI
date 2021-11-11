// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_meal_monkey/Screens/subScreens/Detail_Food_Page.dart';
import 'package:ecommerce_meal_monkey/model/Desserts_list_model.dart';
import 'package:ecommerce_meal_monkey/styles/styles.dart';
// import 'package:ecommerce_meal_monkey/styles/dimenssions.dart';

class dessertsListView extends StatelessWidget {
  const dessertsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: kHorizontalPadding / 2,
        );
      },
      //padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
      physics: const BouncingScrollPhysics(),
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
                Detail();
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
