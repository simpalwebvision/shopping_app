import 'package:flutter/material.dart';
import 'package:livingliquidz/modal/models/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  final VoidCallback onPressed;

  CategoryWidget({required this.category, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              category.imageUrl,
              scale: 3,
            ),
            SizedBox(height: 8.0),
            Text(category.name),
          ],
        ),
      ),
    );
  }
}
