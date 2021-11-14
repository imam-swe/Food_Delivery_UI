part of pages;

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  bool _state = true;
  checkState() {
    if (_state == true) {
      return myOrder();
    } else {
      return const CheckoutPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return checkState();
  }

  Widget myOrder() {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: mainColor,
          leading: GestureDetector(
            onTap: () {
              /* Write listener code here */
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const MainPage()),
                  (Route<dynamic> route) => false);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: primaryFontColor, // add custom icons also
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "My Order",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 250.w,
                        height: 250.h,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("images/burger.png"),
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
                            "King Burgers",
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: primaryFontColor,
                                    ),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: mainColor,
                                size: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2),
                                child: Text(
                                  "(124 rattings)",
                                  style: TextStyle(
                                      color: secondaryFontColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 0, right: 2, bottom: 4),
                                child: Text(
                                  "Burger",
                                  style: TextStyle(color: secondaryFontColor),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2, bottom: 4),
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                      color: mainColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2, right: 15),
                                child: Text(
                                  "Western Food",
                                  style: TextStyle(color: secondaryFontColor),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: mainColor,
                                size: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2),
                                child: Text(
                                  "No 03,4th Lane, Newyork",
                                  style: TextStyle(
                                      color: secondaryFontColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: size.height,
                  width: size.width,
                  color: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Beef Burger x1",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$16",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 3.h,
                          color: placeholderColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Classic Burger x1",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$19",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 3.h,
                          color: placeholderColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Cheese Chicken Burger x1",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$16",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 3.h,
                          color: placeholderColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "French Fries Large",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$13",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 3.h,
                          color: placeholderColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Chicken Legs Basket x1",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$14",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: size.height,
                  width: size.width,
                  //color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Delivery Instructions",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "+ Add Notes",
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 3.h,
                          color: placeholderColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Sub Total",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$70",
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Delivery Cost",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$5",
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 3.h,
                          color: placeholderColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Total",
                              style: TextStyle(
                                  color: primaryFontColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$70",
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: size.height,
                  width: size.width,
                  //color: mainColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _state = false;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    "Checkout",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
