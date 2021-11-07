part of pages;

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _positionedAnimation;

  final List<IntroModel> _data = IntroModel.data;
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _positionedAnimation = Tween<double>(begin: -50.h, end: 0.h).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      )..addListener(() {
          setState(() {});
        }),
    );

    _pageController = PageController();
    _pageController.addListener(() {
      if (_activeIndex != _pageController.page!.round()) {
        _animationController.reset();
        _animationController.forward();
        _activeIndex = _pageController.page!.round();
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _data.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  SizedBox(
                    // width: 1100.w,
                    height: 1000.h,
                    child: Image.asset(
                      _data[index].imagePath!,

                      // fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 900.h),
            child: SliderIndicator(
              length: _data.length,
              activeIndex: _activeIndex,
              indicator: Icon(
                Icons.fiber_manual_record_rounded,
                color: placeholderColor,
                size: 32.r,
              ),
              activeIndicator: Icon(
                Icons.fiber_manual_record_rounded,
                color: mainColor,
                size: 32.r,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 700.h + _positionedAnimation.value,
            ),
            child: Text(
              _data[_activeIndex].title!,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: primaryFontColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 400.h),
            child: SizedBox(
              height: 200.h,
              child: Text(
                _data[_activeIndex].desc!,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: secondaryFontColor,
                      height: 4.h,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
              vertical: kVerticalPadding * 2,
            ),
            child: ElevatedButton(
              onPressed: () {
                if ((_activeIndex + 1) >= _data.length) {
                  Navigator.pushReplacementNamed(context, kRouteStarter);
                  return;
                }
                _pageController.animateToPage(
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
