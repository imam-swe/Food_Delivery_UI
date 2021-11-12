import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_meal_monkey/src/pages/subpages/detail_food_page.dart';
import 'package:ecommerce_meal_monkey/src/models/desserts_list_model.dart';
import 'package:ecommerce_meal_monkey/styles/styles.dart';

class DessertsListView extends StatelessWidget {
  const DessertsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: kHorizontalPadding / 2,
        );
      },
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
                const Detail();
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
                          const Icon(
                            Icons.star,
                            color: mainColor,
                            size: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              data.rating.toString(),
                              style: const TextStyle(color: mainColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 2),
                            child: Text(
                              data.ratingTotal.toString(),
                              style: const TextStyle(color: placeholderColor),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 2),
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
                              style: const TextStyle(
                                  color: placeholderColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
          ],
        );
      },
    );
  }
}
