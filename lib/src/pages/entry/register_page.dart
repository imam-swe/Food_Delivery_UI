part of pages;

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
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
              'Sign Up',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: primaryFontColor,
                  ),
            ),
            SizedBox(
              height: spacing / 2,
            ),
            Text(
              'Add your details to Sign Up',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: primaryFontColor,
                  ),
            ),
            SizedBox(
              height: spacing * 3,
            ),
            const CustomTextFormFeild(
              lebelText: 'Name',
            ),
            SizedBox(height: spacing),
            const CustomTextFormFeild(
              lebelText: 'Email',
            ),
            SizedBox(height: spacing),
            const CustomTextFormFeild(
              lebelText: 'Mobile No',
            ),
            SizedBox(height: spacing),
            const CustomTextFormFeild(
              lebelText: 'Address',
            ),
            SizedBox(height: spacing),
            const CustomTextFormFeild(
              lebelText: 'Password',
            ),
            SizedBox(height: spacing),
            const CustomTextFormFeild(
              lebelText: 'Confirm Password',
            ),
            SizedBox(height: spacing),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
            SizedBox(height: spacing),
            const Expanded(child: SizedBox.shrink()),
            Text.rich(
              TextSpan(
                text: 'Already have an Account?',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: primaryFontColor,
                    ),
                children: [
                  TextSpan(
                    text: ' Login',
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
