import 'package:flutter/material.dart';

import '../../dawa/screens/explore_screen.dart';

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
          InkWell(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(widget.image))),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExploreScreen()));
            },
          ),
          Text(widget.title)
        ],
      ),
    );
  }
}
