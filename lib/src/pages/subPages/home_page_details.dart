part of pages;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Good morning Akila!"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.shoppingCart),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .78,
        width: MediaQuery.of(context).size.width,
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            child: const CurrentLocationButton(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: const Search(),
          ),
          SizedBox(
            height: kVerticalPadding,
          ),
          const HomeCategoryList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Popular Restaurants',
            ),
          ),
          const PopulerRestaurantsCategoryList(),
          SizedBox(
            height: kVerticalPadding,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Most Popular',
            ),
          ),
          const MostPopularList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Recent Items',
            ),
          ),
          const RecentItems()
        ]),
      ),
    );
  }
}
