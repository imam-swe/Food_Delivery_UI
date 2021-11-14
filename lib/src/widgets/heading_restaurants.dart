// ignore_for_file: must_be_immutable
part of widgets;

class HeadingRestaurants extends StatelessWidget {
  String? heading;
  HeadingRestaurants({
    Key? key,
    required this.heading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          heading.toString(),
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: primaryFontColor),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "View all",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: mainColor),
          ),
        ),
      ],
    );
  }
}
