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
      name: "Paracetamol ",
      description: "7pcs, Priceg",
      price: 351,
      imagePath: "assets/images/grocery_images/dawa2.jpg"),
  GroceryItem(
      id: 2,
      name: "Ibuprofen",
      description: "1kg, Priceg",
      price: 351,
      imagePath: "assets/images/grocery_images/dawa3.jpg"),
  GroceryItem(
      id: 3,
      name: "Aspirin",
      description: "1kg, Priceg",
      price: 351,
      imagePath: "assets/images/grocery_images/dawa4.jpg"),
  GroceryItem(
      id: 4,
      name: "Omeprazole",
      description: "250gm, Priceg",
      price: 351,
      imagePath: "assets/images/grocery_images/dawa5.jpg"),
  GroceryItem(
      id: 5,
      name: "Ranitidine",
      description: "250gm, Priceg",
      price: 351,
      imagePath: "assets/images/grocery_images/dawa6.jpg"),
  GroceryItem(
      id: 6,
      name: "Metoclopramide",
      description: "250gm, Priceg",
      price: 351,
      imagePath: "assets/images/grocery_images/dawa7.jpg"),
];

var exclusiveOffers = [demoItems[0], demoItems[1], demoItems[3]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  GroceryItem(
      id: 7,
      name: "Dicyclomine",
      description: "355ml, Price",
      price: 45,
      imagePath: "assets/images/beverages_images/DAWA1.jpg"),
  GroceryItem(
      id: 8,
      name: "Sumatriptan",
      description: "325ml, Price",
      price: 50,
      imagePath: "assets/images/beverages_images/dawa2.jpg"),
  GroceryItem(
      id: 8,
      name: "Cetirizine",
      description: "2L, Price",
      price: 50,
      imagePath: "assets/images/beverages_images/dawa3.jpg"),
  GroceryItem(
      id: 9,
      name: "Amoxicillin",
      description: "2L, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/dawa4.jpg"),
  GroceryItem(
      id: 10,
      name: "acetaminophen",
      description: "325ml, Price",
      price: 40,
      imagePath: "assets/images/beverages_images/dawa5.jpg"),
  GroceryItem(
      id: 11,
      name: "Ibuprofen",
      description: "330ml, Price",
      price: 450,
      imagePath: "assets/images/beverages_images/dawa2.jpg"),
];
