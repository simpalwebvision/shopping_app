import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.title,
    required this.tag,
    required this.index,
  });

  final String image;
  final String title;
  final String tag;
  final int index;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              widget.image, // Replace with your image URL
              width: 70.0, // Adjust the width as needed
              height: 70.0, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(widget.title)
        ],
      ),
    );
  }
}
