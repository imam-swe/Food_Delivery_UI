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
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, kRouteIntro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Container(
      //   // ignore: prefer_const_constructors
      //   decoration: BoxDecoration(
      //     image: const DecorationImage(
      //       image: AssetImage('assets/splash_background1.png'),
      //       fit: BoxFit.fill,
      //     ),
      //   ),
      // ),

      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/splash_background1.png',
            fit: BoxFit.fill,
          ),
          const SplashLogo(),
        ],
      ),
    );
  }
}
