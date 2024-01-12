import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100.0,
          height: 100.0,
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // You can customize the color
          ),
          child: Center(
            child: Text(
              categories[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
