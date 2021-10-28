part of models;

class IntroModel {
  final String? imagePath;
  final String? title;
  final String? desc;

  IntroModel({this.imagePath, this.title, this.desc});

  static List<IntroModel> data = [
    IntroModel(
      imagePath: 'assets/intro1.png',
      title: 'Find Food You Love',
      desc:
          'Discover the best foods from over 1,00\nrestaurants and fast delivery to your\ndoorstep',
    ),
    IntroModel(
      imagePath: 'assets/intro2.png',
      title: 'Fast Delivery',
      desc: 'Fast food delivery to your home, office\nwhere you are',
    ),
    IntroModel(
      imagePath: 'assets/intro3.png',
      title: 'Live Tracking',
      desc:
          'Real time tracking of your food on the app\nonce you placed the order',
    ),
  ];
}
