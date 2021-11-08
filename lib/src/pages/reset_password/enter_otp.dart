part of pages;

class EnterOtpPage extends StatefulWidget {
  const EnterOtpPage({Key? key}) : super(key: key);

  @override
  State<EnterOtpPage> createState() => _EnterOtpPageState();
}

class _EnterOtpPageState extends State<EnterOtpPage> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

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
              title: "We have sent an OTP\nto your email",
              subTitle:
                  "Please Check your email sample@gmail.com\ncontinue to reset your password",
            ),
            Row(
              children: [
                _buildOTPValue(focusNode1, onChanged: (val) {
                  if (val.isNotEmpty) focusNode2.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding),
                _buildOTPValue(focusNode2, onChanged: (val) {
                  if (val.isNotEmpty) focusNode3.requestFocus();
                  if (val.isEmpty) focusNode1.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding),
                _buildOTPValue(focusNode3, onChanged: (val) {
                  if (val.isNotEmpty) focusNode4.requestFocus();
                  if (val.isEmpty) focusNode2.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding),
                _buildOTPValue(focusNode4, onChanged: (val) {
                  if (val.isEmpty) focusNode3.requestFocus();
                }),
              ],
            ),
            SizedBox(height: kVerticalPadding),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const NewPasswordPage(),
                  ),
                );
              },
              child: const Text("Next"),
            ),
            SizedBox(height: kVerticalPadding),
            LoginRegisterFooter(
              question: 'Didn\'t receive?',
              actionText: ' Click Here',
              action: () {},
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildOTPValue(
    FocusNode focusNode, {
    ValueChanged<String>? onChanged,
  }) {
    return Expanded(
      child: TextFormField(
        focusNode: focusNode,
        textAlign: TextAlign.center,
        obscureText: true,
        obscuringCharacter: "*",
        style: const TextStyle(
          fontSize: 32,
          color: primaryFontColor,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
