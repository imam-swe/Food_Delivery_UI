import 'package:ecommerce_meal_monkey/constants.dart';
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
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: mainColorSwatch,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              //primary: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.all(16),
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ElevatedButton.styleFrom(
              // primary: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              side: const BorderSide(
                color: mainColor,
              ),
              minimumSize: const Size(double.infinity, 50),
              padding: const EdgeInsets.all(16),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            floatingLabelStyle: const TextStyle(
              color: secondaryFontColor,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 28,
            ),
          ),
        ),
        routes: {
          kRouteRoot: (context) => const SplashPage(),
          kRouteIntro: (context) => const IntroPage(),
          kRouteStarter: (context) => const StarterPage(),
          kRouteLogin: (context) => LoginPage(),
          kRouteRegister: (context) => RegisterPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
