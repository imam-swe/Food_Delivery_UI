part of pages;

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/splash_background3.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
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
        ),
      ),

      // body: Stack(
      //   fit: StackFit.expand,
      //   children: [
      //     Image.asset(
      //       'assets/splash_background.png',
      //       fit: BoxFit.fill,
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Image.asset(
      //           'assets/logo.png',
      //           fit: BoxFit.fill,
      //           width: 300.w,
      //         )
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
