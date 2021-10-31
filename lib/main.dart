import 'package:ecommerce_meal_monkey/src/pages/pages.dart';
import 'package:ecommerce_meal_monkey/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2160),
      builder: () => MaterialApp(
        title: 'Meal Monkey Demo',
        theme: ThemeData(
          primarySwatch: mainColorSwatch,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.all(16),
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
        ),
        routes: {
          "/": (context) => const SplashPage(),
          "/intro": (context) => const IntroPage(),
          "/starter": (context) => const StarterPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
