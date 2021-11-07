part of pages;

class EnterOtpPage extends StatelessWidget {
  const EnterOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const LoginRegistrationHeader(
              title: "We Have sent an OTP to your email",
              subTitle:
                  "Please Check your email sample@gmail.com\ncontinue to reset your password",
            ),
            TextFormField(
              style: const TextStyle(color: primaryFontColor),
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Your..',
                isCollapsed: true,
              ),
            ),
            SizedBox(height: kVerticalPadding),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Next"),
            ),
            Text.rich(
              TextSpan(
                text: 'Don\'t Received',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: primaryFontColor,
                    ),
                children: [
                  TextSpan(
                    text: "Click Here",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    // recognizer: TapGestureRecognizer()
                    //   ..onTap = () {
                    //     Navigator.pushReplacementNamed(context, actionRoute);
                    //   },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
