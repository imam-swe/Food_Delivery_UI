import 'package:ecommerce_meal_monkey/src/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Monkey Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const SplashPage(),
        "/intro": (context) => const IntroPage(),
        "/starter": (context) => const IntroPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
