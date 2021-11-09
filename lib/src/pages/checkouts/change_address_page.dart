part of pages;

class ChangeAddressPage extends StatefulWidget {
  const ChangeAddressPage({Key? key}) : super(key: key);

  @override
  _ChangeAddressPageState createState() => _ChangeAddressPageState();
}

class _ChangeAddressPageState extends State<ChangeAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              //flex: 28,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, kRouteLogin);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: primaryFontColor,
                            ),
                          ),
                          Text(
                            //"Customize your payment method",
                            "Change Address",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: primaryFontColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/map.png',
                      fit: BoxFit.cover,
                      //width: 600.w,
                    ),
                  ),
                  SizedBox(height: kVerticalPadding),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                    child: Column(
                      children: [
                        const TextField(
                          //style: TextStyle(color: primaryFontColor),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20),
                            isDense: true,
                            hintText: 'Search Address',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 22,
                            ),
                            //icon: Icon(Icons.search),
                            //isCollapsed: true,
                          ),
                        ),
                        SizedBox(height: kVerticalPadding),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                              flex: 1,
                              child: CircleAvatar(
                                backgroundColor: Color(0xfffecfb8),
                                child: Icon(
                                  Icons.star_rounded,
                                  color: mainColor,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 6,
                              child: Text(
                                "Choose a saved place",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                width: 2,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                //color: mainColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: kVerticalPadding),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Column(
      //   children: [
      //     TextFormField(
      //       style: const TextStyle(color: primaryFontColor),
      //       keyboardType: TextInputType.emailAddress,
      //       decoration: const InputDecoration(
      //         labelText: 'Search Address',
      //         isCollapsed: true,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}