

class OffersList {
  String? imagePath;
  String? name;
  //String? label;
  String? rating;
  String? ratingCount;
  String? label;

  OffersList(
      {this.imagePath, this.name, this.rating, this.ratingCount, this.label});

  static List<OffersList> list = [
    OffersList(
        imagePath: 'images/offer1.jpg',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'),
    OffersList(
        imagePath: 'images/offer2.jpg',
        name: 'Minute by fuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'),
    OffersList(
        imagePath: 'images/offer3.jpg',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'),
    OffersList(
        imagePath: 'images/offer4.jpg',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food')
  ];
}