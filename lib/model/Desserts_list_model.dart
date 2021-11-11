// ignore_for_file: file_names

class DessertsList {
  String? imagePath;
  String? name;
  //String? label;
  String? rating;
  String? ratingTotal;
  String? type;
  String? label;

  DessertsList({
    this.imagePath,
    this.name,
    this.rating,
    this.ratingTotal,
    this.type,
    this.label,
  });

  static List<DessertsList> list = [
    DessertsList(
        imagePath: 'images/d1.jpg',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingTotal: '(124 ratings)',
        type: 'Cafe',
        label: 'Western Food'),
    DessertsList(
        imagePath: 'images/d2.jpg',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingTotal: '(124 ratings)',
        type: 'Cafe',
        label: 'Western Food'),
    DessertsList(
        imagePath: 'images/d3.jpg',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingTotal: '(124 ratings)',
        type: 'Cafe',
        label: 'Western Food'),
    DessertsList(
        imagePath: 'images/d4.jpg',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingTotal: '(124 ratings)',
        type: 'Cafe',
        label: 'Western Food')
  ];
}
