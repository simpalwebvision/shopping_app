class CategoryItem {
  final int? id;
  final String name;
  final String imagePath;

  CategoryItem({this.id, required this.name, required this.imagePath});
}

var categoryItemsDemo = [
  CategoryItem(
    name: "CANADA TRIPLE DISTILLED VODKA",
    imagePath: "assets/images/38.jpg",
  ),
  CategoryItem(
    name: "HAYWARDS FINE VODKA",
    imagePath: "assets/images/39.jpg",
  ),
  CategoryItem(
    name: "MAGIC MOMENTS DAZZLE PLAIN",
    imagePath: "assets/images/41.jpg",
  ),
  CategoryItem(
    name: "SHORT STORY GRAIN VODKA",
    imagePath: "assets/images/42.jpg",
  ),
  CategoryItem(
    name: "SMOKE VODKA CLASSIC",
    imagePath: "assets/images/56.jpg",
  ),
  CategoryItem(
    name: "SOHANA DIET VODKA",
    imagePath: "assets/images/57.jpg",
  ),
];
