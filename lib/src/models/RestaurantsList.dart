//Popular
// ignore_for_file: file_names

class PopularsList {
  String? imagePath;
  String? name;
  String? label;
  String? rating;
  String? ratingCount;

  PopularsList(
      {this.imagePath, this.name, this.rating, this.ratingCount, this.label});

  static List<PopularsList> list = [
    PopularsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'),
    PopularsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'),
    PopularsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'),
    PopularsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food')
  ];
}

//most popular
class MostPopularsList {
  String? imagePath;
  String? name;
  String? rating;
  String? ratingCount;
  String? type;
  String? label;

  MostPopularsList({
    this.imagePath,
    this.name,
    this.rating,
    this.ratingCount,
    this.type,
    this.label,
  });

  static List<MostPopularsList> list = [
    MostPopularsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        type: 'Cafe',
        label: 'Western Food'),
    MostPopularsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        type: 'Cafe',
        label: 'Western Food'),
    MostPopularsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        type: 'Cafe',
        label: 'Western Food'),
    MostPopularsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        type: 'Cafe',
        label: 'Western Food')
  ];
}

class RecentItemsList {
  String? imagePath;
  String? name;
  //String? label;
  String? rating;
  String? ratingTotal;
  String? type;
  String? label;

  RecentItemsList({
    this.imagePath,
    this.name,
    this.rating,
    this.ratingTotal,
    this.type,
    this.label,
  });

  static List<RecentItemsList> list = [
    RecentItemsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingTotal: '(124 ratings)',
        type: 'Cafe',
        label: 'Western Food'),
    RecentItemsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingTotal: '(124 ratings)',
        type: 'Cafe',
        label: 'Western Food'),
    RecentItemsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingTotal: '(124 ratings)',
        type: 'Cafe',
        label: 'Western Food'),
    RecentItemsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingTotal: '(124 ratings)',
        type: 'Cafe',
        label: 'Western Food')
  ];
}
