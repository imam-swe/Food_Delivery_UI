// ignore_for_file: avoid_print
part of pages;

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
      return const Detail();
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
            child: const Search(),
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
