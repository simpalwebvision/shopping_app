import 'package:flutter/material.dart';

class FavoriteProductsScreen extends StatefulWidget {
  @override
  _FavoriteProductsScreenState createState() => _FavoriteProductsScreenState();
}

class _FavoriteProductsScreenState extends State<FavoriteProductsScreen> {
  List<String> favoriteProducts = [
    "Product 1",
    "Product 2",
    "Product 3",
    // Add more product names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Products"),
      ),
      body: favoriteProducts.isEmpty
          ? Center(
              child: Text("No favorite products."),
            )
          : ListView.builder(
              itemCount: favoriteProducts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favoriteProducts[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(
                          productName: favoriteProducts[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final String productName;
  ProductDetailsScreen({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Text("Details of $productName"),
      ),
    );
  }
}
