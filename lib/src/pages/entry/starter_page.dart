part of pages;

class StarterPage extends StatelessWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const StarterPainter(),
          const SplashLogo(),
          Padding(
            padding: EdgeInsets.all(kPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Discover the best foods from over 1,00\nrestaurants and fast delivery to your\ndoorstep',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryFontColor,
                        height: 4.h,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: kVerticalPadding * 2),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, kRouteLogin);
                  },
                  child: const Text('Login'),
                ),
                SizedBox(height: kVerticalPadding),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, kRouteRegister);
                  },
                  child: const Text(
                    'Create an Account',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
