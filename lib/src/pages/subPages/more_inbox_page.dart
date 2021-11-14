part of pages;

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        leading: GestureDetector(
          onTap: () {
            /* Write listener code here */
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const MainPage()),
                (Route<dynamic> route) => false);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: primaryFontColor, // add custom icons also
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Inbox",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.shoppingCart)),
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          _notificationsListView(),
        ],
      ),
    );
  }

  Widget _notificationsListView() {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: kHorizontalPadding / 2,
        );
      },
      //padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: InboxListModel.list.length,
      itemBuilder: (context, index) {
        InboxListModel data = InboxListModel.list[index];
        return Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // print("OK>>>>>>>>>>>>>>>>");
              },
              child: Container(
                alignment: Alignment.center,
                //height: 70,
                width: MediaQuery.of(context).size.width,
                color: index % 2 == 0 ? Colors.black12 : Colors.white,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: ListTile(
                        onTap: () {},
                        leading: const Icon(
                          FontAwesomeIcons.solidDotCircle,
                          color: Colors.pink,
                          size: 10,
                        ),
                        title: Text(
                          data.heading!.toString(),
                        ),
                        subtitle: Text(
                          data.notice!.toString(),
                          maxLines: 2,
                          style: const TextStyle(),
                        ),
                        //trailing: Icon(FontAwesomeIcons.solidDotCircle,color: Colors.pink,size: 10,),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            data.time!.toString(),
                            style: const TextStyle(fontSize: 8),
                          ),
                          const Icon(
                            Icons.star_border,
                            color: mainColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
