// part of pages;

// class IntroPage extends StatefulWidget {
//   const IntroPage({Key? key}) : super(key: key);

//   @override
//   State<IntroPage> createState() => _IntroPageState();
// }

// class _IntroPageState extends State<IntroPage>
//     with SingleTickerProviderStateMixin {
//   late PageController _pageController;
//   late AnimationController _animationController;
//   late Animation<double> _positionedAnimation;

//   final List<IntroModel> _data = IntroModel.data;
//   int _activeIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 250),
//     );
//     _positionedAnimation = Tween<double>(begin: -50, end: 0).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut,)..addListener(() {
//         setState(() {
          
//         });
//       }),
//     );

//     _pageController = PageController();
//     _pageController.addListener(() {
//       if(_activeIndex != _pageController.page!.round()){
//         _animationController.reset();
//         _animationController.forward();
//         _activeIndex = _pageController.page!.round();
//       }
//       setState(() {
        
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           PageView.builder(
//             controller: _pageController,
//             itemCount: _data.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   // const SizedBox(
//                   //   // height: 95,
//                   //   height: 150,
//                   // ),
//                   Image.asset(
//                     _data[index].imagePath!,
//                     //width: 380,
//                     height: 1000,
//                     // fit: BoxFit.fitHeight,
//                   ),
//                 ],
//               );
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 900),
//             child: SliderIndicator(
//               length: _data.length,
//               activeIndex: _activeIndex,
//               indicator: const Icon(
//                 Icons.fiber_manual_record_rounded,
//                 color: placeholderColor,
//                 size: 32,
//               ),
//               activeIndicator: const Icon(
//                 Icons.fiber_manual_record_rounded,
//                 color: mainColor,
//                 size: 32,
//               ),
//             ),
//           ),
//           Padding(
//            // padding: const EdgeInsets.only(bottom: 700 + _positionedAnimation.value),
//             // height: 150,
//             padding: const EdgeInsets.only(bottom: 700),
//             child: Text(
//               _data[_activeIndex].title!,
//               style: Theme.of(context).textTheme.headline4!.copyWith(
//                     color: primaryFontColor,
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 400),
//             child: SizedBox(
//               height: 200,
//               child: Text(
//                 _data[_activeIndex].desc!,
//                 style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                       color: secondaryFontColor,
//                       fontWeight: FontWeight.bold,
//                       // height: 4
//                     ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: ElevatedButton(
//                     onPressed: () {
//                       //print((_activeIndex+1) >= _data.length);
//                       if ((_activeIndex + 1) >= _data.length) return;
//                       _pageController.animateToPage(
//                         _activeIndex + 1,
//                         duration: const Duration(milliseconds: 250),
//                         curve: Curves.linear,
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: mainColor,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       padding: const EdgeInsets.all(16),
//                     ),
//                     // style: ButtonStyle(
//                     //   shape: MaterialStateProperty.all<OutlinedBorder>(
//                     //     RoundedRectangleBorder(
//                     //       borderRadius: BorderRadius.circular(50),
//                     //     ),
//                     //   ),
//                     //   backgroundColor:
//                     //       MaterialStateProperty.all<Color>(mainColor),
//                     //   padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                     //     const EdgeInsets.all(16),
//                     //   ),
//                     child: const Text('Next'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
