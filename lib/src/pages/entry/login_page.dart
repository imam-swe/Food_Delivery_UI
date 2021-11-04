part of pages;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Login'),
          Text('data'),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: placeholderColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                isCollapsed: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
