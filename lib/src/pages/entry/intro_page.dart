part of pages;

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _controller;
  final List<IntroModel> _data = IntroModel.data;
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _controller.addListener(() {
      setState(() {
        _activeIndex = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 150.h,
                    ),
                    SizedBox(
                      width: 1100.w,
                      height: 1100.h,
                      child: Image.asset(
                        _data[index].imagePath!,

                        // fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SliderIndicator(
            length: _data.length,
            activeIndex: _activeIndex,
            indicator: Icon(
              Icons.fiber_manual_record_rounded,
              color: placeholderColor,
              size: 32.w,
            ),
            activeIndicator: Icon(
              Icons.fiber_manual_record_rounded,
              color: mainColor,
              size: 32.w,
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          SizedBox(
            height: 150.h,
            child: Text(
              _data[_activeIndex].title!,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: primaryFontColor, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150.h,
            child: Text(
              _data[_activeIndex].desc!,
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: secondaryFontColor,
                    fontWeight: FontWeight.bold,
                    height: 4.h,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 60.w,
              vertical: 120.h,
            ),
            child: ElevatedButton(
              onPressed: () {
                if ((_activeIndex + 1) >= _data.length) {
                  Navigator.pushReplacementNamed(context, kRouteStarter);
                  return;
                }
                _controller.animateToPage(
                  _activeIndex + 1,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn,
                );
              },
              style: ElevatedButton.styleFrom(
                primary: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                side: const BorderSide(
                  color: mainColor,
                ),
                padding: const EdgeInsets.all(16),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}
