part of pages;

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

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
              centerText: true,
              title: "New Password",
              subTitle: "Please enter your password",
            ),
            SizedBox(height: kVerticalPadding),
            TextFormField(
              style: const TextStyle(color: primaryFontColor),
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'New Password',
                isCollapsed: true,
              ),
            ),
            SizedBox(height: kVerticalPadding),
            TextFormField(
              style: const TextStyle(color: primaryFontColor),
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm New Password',
                isCollapsed: true,
              ),
            ),
            SizedBox(height: kVerticalPadding),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
