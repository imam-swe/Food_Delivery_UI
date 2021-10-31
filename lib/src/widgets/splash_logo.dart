part of widgets;

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.fill,
            width: 150,
          ),
          Text.rich(
            TextSpan(
              text: 'Meal',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
              children: const [
                TextSpan(
                  text: ' Monkey',
                  style: TextStyle(color: primaryFontColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'FOOD DELIVERY',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: secondaryFontColor,
                  letterSpacing: 8,
                ),
          ),
        ],
      ),
    );
    // child: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   // crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Image.asset(
    //       'assets/logo.png',
    //       //fit: BoxFit.fill,
    //       //width: 300.w,
    //     ),

    //   ],
    // ),
  }
}