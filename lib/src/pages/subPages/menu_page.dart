// ignore_for_file: avoid_print

part of pages;

class MenuHome extends StatefulWidget {
  const MenuHome({Key? key}) : super(key: key);

  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  bool state = true;
  Widget checkState() {
    if (state == true) {
      return menuHome();
    } else {
      state = true;
      return const Desserts();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        leading: GestureDetector(
          onTap: () {
            //menuHome();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const MainPage()),
                (Route<dynamic> route) => false);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: primaryFontColor, // add custom icons also
          ),
        ),
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            //condition == true ? new Container() : new Container()
            child: state == true
                ? const Text(
                    "Menu",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )
                : const Text(
                    "Desserts",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.shoppingCart)),
          )
        ],
      ),
      body: checkState(),
    );
  }

  Widget menuHome() {
    final size = MediaQuery.of(context).size;
    return Stack(
      //fit: StackFit.expand,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: size.height * .65,
            width: size.width * .26,
            decoration: const BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: size.height * .58,
            width: size.width * .9,
            color: Colors.transparent,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  //flex: 1,
                  child: InkWell(
                    onTap: () {
                      print("OKK>>>>>>>>>");
                    },
                    child: _buildMenuButton("Food", "220"),
                  ),
                ),
                Expanded(
                  child: _buildMenuButton("Beverages", "243"),
                ),
                Expanded(
                  //flex: 1,
                  child: InkWell(
                    onTap: () {
                      print("OKK>>>>>>>>>");
                      setState(() {
                        state = false;
                      });
                    },
                    child: _buildMenuButton("Desserts", "220"),
                  ),
                ),
                Expanded(
                  child: _buildMenuButton("Promotions", "243"),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  checkImage(String image) {
    if (image == "Promotions") {
      return "images/burger.png";
    } else if (image == "Desserts") {
      return "images/offer1.jpg";
    } else if (image == "Beverages") {
      return "images/offer3.jpg";
    } else {
      return "images/offer4.jpg";
    }
  }

  Widget checkShape(String mode) {
    if (mode == "Promotions") {
      return InkWell(
        onTap: () {
          print("OKK>>>>>>>>>");
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(checkImage(mode.toString())),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFFE8581C),
          ),
          padding: const EdgeInsets.all(8.0),
        ),
      );
    } else if (mode == "Desserts") {
      return InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                checkImage(
                  mode.toString(),
                ),
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFFE8581C),
          ),
          padding: const EdgeInsets.all(8.0),
        ),
      );
    } else if (mode == "Beverages") {
      return Transform.rotate(
        angle: 1.0,
        child: InkWell(
          onTap: () {
            print("OKK>>>>>>>>>");
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(checkImage(mode.toString())),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xFFE8581C),
            ),
            padding: const EdgeInsets.all(8.0),
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: () {
          print("OKK>>>>>>>>>");
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(checkImage(mode.toString())),
                fit: BoxFit.fill),
            //borderRadius: BorderRadius.circular(25),
            color: const Color(0xFFE8581C),
          ),
          padding: const EdgeInsets.all(8.0),
        ),
      );
    }
  }

  Widget _buildMenuButton(String menuName, String quantity) {
    return Stack(children: [
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 35),
          child: Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 65.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(menuName.toString(),
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: primaryFontColor,
                          fontWeight: FontWeight.bold)),
                  Text(
                    quantity.toString() + " Items",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: primaryFontColor, fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {
            print("OKK>>>>>>>>>");
          },
          child: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  print("OKK>>>>>>>>>");
//                                if(level.toString()=='3'){
//                                  print("Desserts >>>>>>>>>>>>>>>>>>>>>>>>");
//                                }
                },
                icon: const Icon(
                  Icons.navigate_next,
                  color: mainColor,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: checkShape(menuName),
      ),
    ]);
  }
}
