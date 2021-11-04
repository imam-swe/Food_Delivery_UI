part of pages;

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final double spacing = 60.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
         horizontal: 60.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: spacing * 2.5,
            ),
            Text(
              'Login',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: primaryFontColor,
                  ),
            ),
            SizedBox(
              height: spacing / 2,
            ),
            Text(
              'Add your details to login',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: primaryFontColor,
                  ),
            ),
            SizedBox(
              height: spacing * 3,
            ),
            const CustomTextFormFeild(
              lebelText: 'Your Email',
            ),
            SizedBox(height: spacing),
            const CustomTextFormFeild(
              lebelText: 'Password',
            ),
            SizedBox(height: spacing),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
            SizedBox(height: spacing),
            Text(
              "Forgot your password?",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: primaryFontColor,
                  ),
            ),
            SizedBox(height: spacing * 2),
            Text(
              "or Login With",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: primaryFontColor,
                  ),
            ),
            SizedBox(height: spacing),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.facebookF),
              label: const Text('Login with Facebook'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff3b5998),
              ),
            ),
            SizedBox(
              height: spacing * 2,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.googlePlusG),
              label: const Text('Login with Google'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffdb4a39),
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
            Text.rich(
              TextSpan(
                text: 'Don\'t have an Account?',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: primaryFontColor,
                ),
                children: [
                  TextSpan(
                    text: ' Sign Up',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}
