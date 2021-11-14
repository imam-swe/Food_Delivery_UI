part of pages;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const LoginRegistrationHeader(
                title: 'Login',
                subTitle: 'Add your details to login',
              ),
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Your Email',
                  isCollapsed: true,
                ),
              ),
              SizedBox(height: kVerticalPadding),
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  isCollapsed: true,
                ),
              ),
              SizedBox(height: kVerticalPadding),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                },
                child: const Text("Login"),
              ),
              SizedBox(height: kVerticalPadding),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EnterEmailPage(),
                    ),
                  );
                },
                child: Text(
                  "Forgot your password?",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: primaryFontColor,
                      ),
                ),
              ),
              SizedBox(height: kVerticalPadding * 2),
              Text(
                "or Login With",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: primaryFontColor,
                    ),
              ),
              SizedBox(height: kVerticalPadding),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.facebookF),
                label: const Text('Login with Facebook'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff3b5998),
                  padding: EdgeInsets.all(kButtonIconPadding),
                ),
              ),
              SizedBox(height: kVerticalPadding),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.googlePlusG),
                label: const Text('Login with Google'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffdb4a39),
                  padding: EdgeInsets.all(kButtonIconPadding),
                ),
              ),
              const Expanded(child: SizedBox.shrink()),
              LoginRegisterFooter(
                question: 'Don\'t have an Account?',
                actionText: ' Sign Up',
                action: () {
                  Navigator.pushReplacementNamed(context, kRouteRegister);
                },
              ),
              SizedBox(height: kVerticalPadding),
            ],
          ),
        ),
      ),
    );
  }
}
