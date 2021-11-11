// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:ecommerce_meal_monkey/Screens/main_page.dart';
// import 'package:ecommerce_meal_monkey/Screens/subScreens/change_address_page.dart';
// import 'package:ecommerce_meal_monkey/styles/styles.dart';
part of pages;

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  //bool address=true;
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: placeholderColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => const MainPage()),
                                    (Route<dynamic> route) => false);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xffb6b7b7),
                              ),
                            ),
                            Text(
                              //"Customize your payment method",
                              "Checkout",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: primaryFontColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .04,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        // height: MediaQuery.of(context).size.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              //"Customize your payment method",
                              "Delivery Address",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: secondaryFontColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  //"Customize your payment method",
                                  "653 Nostrand Ave.,\nBrooklyn, NY 11216",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          color: primaryFontColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ChangeAddressPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    //"Customize your payment method",
                                    "Change",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                          color: mainColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .002,
                              width: size.width,
                              //color: placeholderColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "Payment method",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: secondaryFontColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: GestureDetector(
                                onTap: () {
                                  _showModalBottomSheet(
                                      size.height * .8, context);
                                },
                                child: const Text(
                                  '+ Add Card',
                                  style: TextStyle(
                                    color: Color(0xfffc6011),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //Container(),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1.h,
                                color: placeholderColor,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    "Cash on delivery",
                                    style: TextStyle(
                                      //color: mainColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _value = !_value;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: _value
                                          ? const Icon(
                                              Icons.check,
                                              size: 8.0,
                                              color: Colors.white,
                                            )
                                          : const Icon(
                                              Icons.check_box_outline_blank,
                                              size: 8.0,
                                              color: Colors.white,
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "images/visa.png",
                                  width: 30,
                                  //fit: BoxFit.fill,
                                ),
                                //SizedBox(width: kHorizontalPadding),
                                const Padding(
                                  padding: EdgeInsets.only(right: 80),
                                  child: Text(
                                    "**** **** **** 3241",
                                    style: TextStyle(
                                      //color: mainColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _value = !_value;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: _value
                                          ? const Icon(
                                              Icons.check,
                                              size: 8.0,
                                              color: Colors.white,
                                            )
                                          : const Icon(
                                              Icons.check_box_outline_blank,
                                              size: 8.0,
                                              color: Colors.white,
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/payp.png",
                                  width: 15,
                                  //fit: BoxFit.fill,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 40),
                                  child: FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text(
                                      "ceo.sir@excelitai.com",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _value = !_value;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: _value
                                          ? const Icon(
                                              Icons.check,
                                              size: 8.0,
                                              color: Colors.white,
                                            )
                                          : const Icon(
                                              Icons.check_box_outline_blank,
                                              size: 8.0,
                                              color: Colors.white,
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 2.h,
                                color: placeholderColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  color: Colors.white,
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
                              "Sub Total",
                              style: TextStyle(
                                color: Color(0xff7c7d7e),
                                // fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '\$21',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Delivery Cost",
                              style: TextStyle(
                                color: Color(0xff7c7d7e),
                                // fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '\$21',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Discount",
                              style: TextStyle(
                                color: Color(0xff7c7d7e),
                                // fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '\$21',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 1,
                          color: placeholderColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Total",
                              style: TextStyle(
                                color: Color(0xff7c7d7e),
                                // fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '\$21',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: size.height,
                width: size.width,
                color: Colors.white,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          //checkout

                          _showThankBottomSheet(size.height * .8, context);
                        },
                        child: const Text("Send Order"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showModalBottomSheet(var size, BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: size,
          width: double.infinity,
          //color: Colors.grey.shade200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text("Add Credit/Debit Card"),
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.cancel_outlined),
                      ),
                    ),
                  ],
                ),
                TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: 'Card Number',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text("Expiry"),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'MM',
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(22), // Added this
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'YY',
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(22), // Added this
                        ),
                      ),
                    ),
                  ],
                ),
                TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: 'Sequrity Code',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
                TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
                TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "You can remove this card\nat any time",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: primaryFontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeTrackColor: Colors.yellow,
                      activeColor: Colors.orangeAccent,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    _showModalBottomSheet(size.height * .7, context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Icon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Add Card",
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
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
        );
      },
    );
  }

  _showThankBottomSheet(var size, BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: size,
          width: double.infinity,
          //color: Colors.grey.shade200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/thank.png',
                  fit: BoxFit.fill,
                  width: 600.w,
                ),
                SizedBox(height: kVerticalPadding),
                Text(
                  'Thank You!',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: primaryFontColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: kVerticalPadding * 0.25),
                Text(
                  'for your order',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: primaryFontColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: kVerticalPadding * 2),
                Text(
                  'Your Order is now being processed. We will let\nyou know once the order is picked from the outlet.\nCheck the status of your Order',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryFontColor,
                        height: 4.h,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: kVerticalPadding * 2),
                // ElevatedButton(
                //   onPressed: () {
                //     //_showModalBottomSheet(size.height * .7, context);
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 80),
                //     child: FittedBox(
                //       fit: BoxFit.fitWidth,
                //       child: Text(
                //         "Track My Order",
                //         style: Theme.of(context).textTheme.bodyText2!.copyWith(
                //               color: Colors.white,
                //               fontWeight: FontWeight.bold,
                //               fontSize: 20,
                //             ),
                //       ),
                //     ),
                //   ),
                // ),
                ElevatedButton(
                  onPressed: () {
                    // _showThankBottomSheet(size.height * .8, context);
                  },
                  child: const Text("Track My Order"),
                ),
                SizedBox(height: kVerticalPadding),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const MainPage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'Back To Home',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: primaryFontColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
