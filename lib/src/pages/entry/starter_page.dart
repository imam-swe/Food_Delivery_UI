part of pages;

class StarterPage extends StatelessWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(fit: StackFit.expand, children: [
        const SplashLogo(),
        Column(
          children: [
            
            Text(
              'Discover the best foods from over 1,00\nrestaurants and fast delivery to your\ndoorstep',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: secondaryFontColor,
                height: 4.h,
              ),
            ),
            SizedBox(height: 75.h,),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            SizedBox(height: 50.h,),
            OutlinedButton(
              onPressed: () {},
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
              child: const Text('Create an Account', style: TextStyle(
                color: mainColor,
              ),),
            )
          ],
        )
      ]),
    );
  }
}
