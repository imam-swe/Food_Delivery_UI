part of widgets;

class CustomTextFormFeild extends StatelessWidget {
  final String? lebelText;

  const CustomTextFormFeild({
    this.lebelText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: primaryFontColor),
      decoration: InputDecoration(
        labelText: lebelText,
        isCollapsed: true,
      ),
    );
  }
}
