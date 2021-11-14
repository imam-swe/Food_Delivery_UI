part of pages;

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Latest Offers",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.shoppingCart)),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              child:
                  const Text("Find discounts,Offers special\nmeals and more!")),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 175),
            child: Container(
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(50)),
              height: 30,
              child: const Center(
                  child: Text(
                "Check Offers",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: kHorizontalPadding / 2,
              );
            },
            //padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: OffersList.list.length,
            itemBuilder: (context, index) {
              OffersList data = OffersList.list[index];
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
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: primaryFontColor,
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
                                data.ratingCount.toString(),
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
          )
        ],
      ),
    );
  }
}
