// ignore_for_file: file_names, prefer_const_constructors
part of widgets;

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: kHorizontalPadding / 2,
          );
        },
        padding: EdgeInsets.symmetric(horizontal: 23),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: CategoryModel.list.length,
        itemBuilder: (context, index) {
          CategoryModel data = CategoryModel.list[index];
          return Column(
            children: [
              Container(
                width: 300.w,
                height: 300.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data.imagePath!.toString()),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                      )
                    ]),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                data.label!.toString(),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: primaryFontColor,
                    ),
              )
            ],
          );
        },
      ),
    );
  }
}

class PopulerRestaurantsCategoryList extends StatelessWidget {
  const PopulerRestaurantsCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      itemCount: PopularsList.list.length,
      itemBuilder: (context, index) {
        PopularsList data = PopularsList.list[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(data.imagePath!.toString(), fit: BoxFit.fill),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    data.label!.toString(),
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: primaryFontColor,
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
                          data.ratingCount.toString(),
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
                  )
                ],
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

class MostPopularList extends StatelessWidget {
  const MostPopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      //width: 600.w,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: kHorizontalPadding / 2,
          );
        },
        padding: EdgeInsets.symmetric(horizontal: 23),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: MostPopularsList.list.length,
        itemBuilder: (context, index) {
          MostPopularsList data = MostPopularsList.list[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 600.w,
                height: 300.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data.imagePath!.toString()),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                      )
                    ]),
              ),
              SizedBox(
                height: 25.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    data.label!.toString(),
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: primaryFontColor,
                        ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0, right: 2),
                        child: Text(
                          data.type.toString(),
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
                        padding: const EdgeInsets.only(left: 2, right: 15),
                        child: Text(
                          data.label.toString(),
                          style: TextStyle(color: placeholderColor),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: mainColor,
                        size: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          data.rating.toString(),
                          style: TextStyle(
                              color: mainColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

class RecentItems extends StatelessWidget {
  const RecentItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          height: kVerticalPadding / 2,
        );
      },
      padding: EdgeInsets.symmetric(horizontal: 23),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: RecentItemsList.list.length,
      itemBuilder: (context, index) {
        RecentItemsList data = RecentItemsList.list[index];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 300.w,
              height: 300.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(data.imagePath!.toString()),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                    )
                  ]),
            ),
            SizedBox(
              width: 25.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  data.label!.toString(),
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: primaryFontColor,
                      ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 2, bottom: 4),
                      child: Text(
                        data.type.toString(),
                        style: TextStyle(color: placeholderColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, bottom: 4),
                      child: Text(
                        ".",
                        style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, right: 15),
                      child: Text(
                        data.label.toString(),
                        style: TextStyle(color: placeholderColor),
                      ),
                    ),
                  ],
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
                        style: TextStyle(
                            color: mainColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 2),
                      child: Text(
                        data.ratingTotal.toString(),
                        style: TextStyle(color: placeholderColor),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
