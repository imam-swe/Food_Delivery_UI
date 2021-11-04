part of widgets;

class CustomTextFormFeild extends StatelessWidget {
  final String? lebelText;
  
  const CustomTextFormFeild({
    this.lebelText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: placeholderColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextFormField(
        style: const TextStyle(color: primaryFontColor),
        decoration: InputDecoration(
          labelText: lebelText,
          isCollapsed: true,
        ),
      ),
    );
  }
}