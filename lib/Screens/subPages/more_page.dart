// ignore_for_file: avoid_print, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce_meal_monkey/Screens/subPages/more_about_us_page.dart';
import 'package:ecommerce_meal_monkey/Screens/subPages/more_inbox_page.dart';
import 'package:ecommerce_meal_monkey/Screens/subPages/more_myorder_page.dart';
import 'package:ecommerce_meal_monkey/Screens/subPages/more_notification_page.dart';
import 'package:ecommerce_meal_monkey/Screens/subPages/more_payment_details.dart';
import 'package:ecommerce_meal_monkey/styles/styles.dart';

// import 'package:foodecom/styles/dimenssions.dart';
class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  bool menuMore = true;
  bool payment = false;
  bool myOrder = false;
  bool notification = false;
  bool inbox = false;
  bool aboutUs = false;
  Widget checkState(BuildContext context) {
    if (menuMore == true) {
      menuMore = true;
      payment = false;
      myOrder = false;
      notification = false;
      inbox = false;
      aboutUs = false;
      return moreMenu(context);
    } else if (payment == true) {
      menuMore = true;
      return PaymentDetail();
    } else if (myOrder == true) {
      menuMore = true;
      return MyOrders();
    } else if (notification == true) {
      menuMore = true;
      return Notifications();
    } else if (inbox == true) {
      menuMore = true;
      return Inbox();
    } else if (aboutUs == true) {
      menuMore = true;
      return AboutUs();
    } else {
      menuMore = true;
      return PaymentDetail();
    }
  }

  //bool state = true;
  Widget moreMenu(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "More",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(FontAwesomeIcons.shoppingCart)),
          )
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding, vertical: kVerticalPadding),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  print("okkkk>>>>>");
                  setState(() {
                    menuMore = false;
                    payment = true;
                    myOrder = false;
                    notification = false;
                    inbox = false;
                    aboutUs = false;
                  });
                  //PaymentDetail();
                },
                child: _buildButtonCustom(
                    size,
                    context,
                    Icon(
                      FontAwesomeIcons.fileInvoiceDollar,
                      color: primaryFontColor,
                    ),
                    "Payment Details"),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  print("okkkk>>>>>");
                  setState(() {
                    menuMore = false;
                    payment = false;
                    myOrder = true;
                    notification = false;
                    inbox = false;
                    aboutUs = false;
                  });
                },
                child: _buildButtonCustom(
                    size,
                    context,
                    Icon(
                      FontAwesomeIcons.shoppingBag,
                      color: primaryFontColor,
                    ),
                    "My Orders"),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    menuMore = false;
                    payment = false;
                    myOrder = false;
                    notification = true;
                    inbox = false;
                    aboutUs = false;
                  });
                },
                child: _buildButtonCustom(
                    size,
                    context,
                    Icon(
                      FontAwesomeIcons.bell,
                      color: primaryFontColor,
                    ),
                    "Notifications"),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    menuMore = false;
                    payment = false;
                    myOrder = false;
                    notification = false;
                    inbox = true;
                    aboutUs = false;
                  });
                },
                child: _buildButtonCustom(
                    size,
                    context,
                    Icon(
                      Icons.email,
                      color: primaryFontColor,
                    ),
                    "Inbox"),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    menuMore = false;
                    payment = false;
                    myOrder = false;
                    notification = false;
                    inbox = false;
                    aboutUs = true;
                  });
                },
                child: _buildButtonCustom(
                    size,
                    context,
                    Icon(
                      FontAwesomeIcons.info,
                      color: primaryFontColor,
                    ),
                    "About Us"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return checkState(context);
  }

  Widget _buildButtonCustom(
      var size, BuildContext context, Icon _icon, String title) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: size.height * .1,
            width: size.width * .8,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(3, 6), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: placeholderColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: placeholderColor.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 100,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        //print("Ok>>>>>>>>>>>>>>>cart");
//                                if(level.toString()=='3'){
//                                  print("Desserts >>>>>>>>>>>>>>>>>>>>>>>>");
//                                }
                      },
                      icon: FittedBox(
                        fit: BoxFit.cover,
                        child: _icon,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        title.toString(),
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: secondaryFontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
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
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: placeholderColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: placeholderColor.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
//                  print("Ok>>>>>>>>>>>>>>>cart");
//                                if(level.toString()=='3'){
//                                  print("Desserts >>>>>>>>>>>>>>>>>>>>>>>>");
//                                }
                },
                icon: FittedBox(
                  fit: BoxFit.cover,
                  child: Icon(
                    Icons.navigate_next,
                    color: primaryFontColor,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
