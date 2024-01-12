class GroceryItem {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  GroceryItem({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

var demoItems = [
  GroceryItem(
      id: 1,
      name: "Blensed",
      description: "1 Ltr, Priceg",
      price: 4.99,
      imagePath: "assets/images/43.jpg"),
  GroceryItem(
      id: 2,
      name: "Premium",
      description: "1 Ltr, Priceg",
      price: 4.99,
      imagePath: "assets/images/35.jpg"),
  GroceryItem(
      id: 3,
      name: "Plain",
      description: "1 Ltr, Priceg",
      price: 4.99,
      imagePath: "assets/images/40.jpg"),
  GroceryItem(
      id: 4,
      name: "Flavoure",
      description: "1 Ltr, Priceg",
      price: 4.99,
      imagePath: "assets/images/44.jpg"),
  GroceryItem(
      id: 5,
      name: "Sloe Gin",
      description: "1 Ltr, Priceg",
      price: 4.99,
      imagePath: "assets/images/45.jpg"),
  GroceryItem(
      id: 6,
      name: "Malt Whiskey",
      description: "1 Ltr, Priceg",
      price: 4.99,
      imagePath: "assets/images/55.jpg"),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  GroceryItem(
      id: 7,
      name: "BAGPIPER DELUXE",
      description: "1 Ltr, Price",
      price: 1.99,
      imagePath: "assets/images/31.jpg"),
  GroceryItem(
      id: 8,
      name: "COTOMBI CHARRED RESERVE WHISKY",
      description: "1 Ltr, Price",
      price: 1.50,
      imagePath: "assets/images/32.jpg"),
  GroceryItem(
      id: 8,
      name: "DIRECTORS SPECIAL",
      description: "1 Ltr, Price",
      price: 15.99,
      imagePath: "assets/images/33.jpg"),
  GroceryItem(
      id: 9,
      name: "DSP BLACK DELUXE",
      description: "1 Ltr, Price",
      price: 1.50,
      imagePath: "assets/images/34.jpg"),
  GroceryItem(
      id: 10,
      name: "EIGHT P M",
      description: "1 Ltr, Price",
      price: 4.99,
      imagePath: "assets/images/36.jpg"),
  GroceryItem(
      id: 11,
      name: "HAYWARDS FINE",
      description: "1 Ltr, Price",
      price: 4.99,
      imagePath: "assets/images/37.jpg"),
];
