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
                        TextFormField(
                        
                          style: const TextStyle(color: primaryFontColor),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: 'Search Address',
                             icon: Icon(Icons.search),
                            //isCollapsed: true,
                          ),
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.bookmark,
                                color: mainColor,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text("Choose a save place"),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.bookmark,
                                color: mainColor,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.forward,
                                color: mainColor,
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
