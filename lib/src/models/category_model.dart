
class CategoryModel{
  final String? imagePath;
  final String? label;

  CategoryModel({this.label,this.imagePath});

  static List<CategoryModel> list=[
    CategoryModel(
      label: 'Offers',
      imagePath: 'images/offers.png'
    ),
    CategoryModel(
        label: 'Sri Lankan',
        imagePath: 'images/srilankan.png'
    ),
    CategoryModel(
        label: 'Italian',
        imagePath: 'images/italian.png'
    ),
    CategoryModel(
        label: 'Indian',
        imagePath: 'images/indian.png'
    ),
  ];

}