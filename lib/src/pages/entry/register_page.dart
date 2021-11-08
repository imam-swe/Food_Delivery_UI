part of pages;

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                title: 'Sign Up',
                subTitle: 'Add your details to sign up',
              ),
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                decoration: const InputDecoration(
                  labelText: 'Name',
                  isCollapsed: true,
                ),
              ),
              SizedBox(height: kVerticalPadding),
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  isCollapsed: true,
                ),
              ),
              SizedBox(height: kVerticalPadding),
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Mobile No',
                  isCollapsed: true,
                ),
              ),
              SizedBox(height: kVerticalPadding),
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                decoration: const InputDecoration(
                  labelText: 'Address',
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
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  isCollapsed: true,
                ),
              ),
              SizedBox(height: kVerticalPadding),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Sign Up"),
              ),
              //SizedBox(height: kLoginRegisterSpacing),
              const Expanded(child: SizedBox.shrink()),
              LoginRegisterFooter(
                question: 'Already have an Account?',
                actionText: ' Login',
                action: (){
                  Navigator.pushReplacementNamed(context, kRouteLogin);
                },
              ),
              SizedBox(height: kVerticalPadding)
            ],
          ),
        ),
      ),
    );
  }
}
