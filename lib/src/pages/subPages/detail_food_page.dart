part of pages;

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int quantity = 0;

  // ignore: prefer_typing_uninitialized_variables
  var _value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "images/d3.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * .7,
            width: MediaQuery.of(context).size.width,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
                color: Colors.white),
            child: Stack(
              //fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Tandoori Chicken Pizza",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: primaryFontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: mainColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: mainColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: mainColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: mainColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: mainColor,
                                    size: 20,
                                  ),
                                ],
                              ),
                              Text(
                                " 4 Star Ratings",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: mainColor,
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 13),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Rs. 750",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: primaryFontColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                              ),
                              Text(
                                "/ per Portion",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: primaryFontColor,
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: secondaryFontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "A product detail page, also known as a PDP, is a web page on an eCommerce website that provides information on a specific product. This information includes size, color, price, shipping information, reviews, and other relevant information customers want to know before purchasing.",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: placeholderColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Customize your Order",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: secondaryFontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black12,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: DropdownButton(
                            //itemHeight: 100,
                            //elevation: 100,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down),
                            dropdownColor: placeholderColor,
                            value: _value,
                            items: const [
                              DropdownMenuItem(
                                child: Text("First Item"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 2,
                              )
                            ],
                            onChanged: (value) {
                              _value = value;
                            },
                            hint: const Text("- Select Zise of the portion -"),
                            underline: DropdownButtonHideUnderline(
                                child: Container())),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black12,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: DropdownButton(
                            //itemHeight: 100,
                            //elevation: 100,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down),
                            dropdownColor: placeholderColor,
                            value: _value,
                            items: const [
                              DropdownMenuItem(
                                child: Text("First Item"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 2,
                              )
                            ],
                            onChanged: (value) {
                              _value = value;
                            },
                            hint: const Text("- Select the Ingredients -"),
                            underline: DropdownButtonHideUnderline(
                                child: Container())),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "Number of Portions",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: secondaryFontColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 50,
                                        height: 30,
                                        //padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            //primary: Colors.grey,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            minimumSize: const Size(5, 5),
                                          ),
                                          onPressed: () {
                                            if (quantity > 0) {
                                              setState(() {
                                                quantity--;
                                              });
                                            } else {
                                              setState(() {
                                                quantity = 0;
                                              });
                                            }
                                          },
                                          child: const Icon(
                                            FontAwesomeIcons.minus,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border:
                                                Border.all(color: mainColor)),
                                        child: FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text("$quantity"),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                        height: 30,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            //primary: Colors.grey,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            minimumSize: const Size(5, 5),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              quantity++;
                                            });
                                          },
                                          child: const Icon(
                                            FontAwesomeIcons.plus,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .2,
                    decoration: const BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Stack(
                        //fit: StackFit.expand,
                        clipBehavior: Clip.none,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: MediaQuery.of(context).size.height * .12,
                              width: MediaQuery.of(context).size.width * .8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Total Price",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: secondaryFontColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "BDT 5380",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                color: secondaryFontColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .3,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20)),
                                          onPressed: () {
                                            //print("Ok>>>>>>>>>>>>>>>Add To cart");
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Icon(
                                                FontAwesomeIcons.cartPlus,
                                                size: 10,
                                              ),
                                              FittedBox(
                                                fit: BoxFit.fitWidth,
                                                child: Text(
                                                  "Add to Cart",
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    //print("Ok>>>>>>>>>>>>>>>cart");
                                  },
                                  icon: const Icon(
                                    FontAwesomeIcons.shoppingCart,
                                    color: mainColor,
                                    size: 20,
                                  ),
                                ),
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
          ),
        ),
      ],
    );
  }
}
