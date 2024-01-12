import 'package:flutter/material.dart';
import 'package:livingliquidz/dawa/common_widgets/app_text.dart';
import 'package:livingliquidz/dawa/models/grocery_item.dart';
import 'package:livingliquidz/providers/favorite.dart';

class GroceryItemCardWidget extends StatelessWidget {
  const GroceryItemCardWidget({Key? key, required this.item, this.heroSuffix})
      : super(key: key);
  final GroceryItem item;
  final String? heroSuffix;

  final double width = 174;
  final double height = 250;
  final Color borderColor = const Color(0xffE2E2E2);
  final double borderRadius = 18;

  @override
  Widget build(BuildContext context) {
    final DawaFavoriteProvider provider = DawaFavoriteProvider.of(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Hero(
                  tag: "GroceryItem:${item.name}-${heroSuffix ?? ""}",
                  child: Image.asset(item.imagePath),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AppText(
              text: item.name,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            AppText(
              text: item.description,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF7C7C7C),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                AppText(
                  text: "₹${item.price.toStringAsFixed(2)}",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    provider.toggleFavorite(item);
                  },
                  child: Icon(
                    provider.isFavorite(item)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        provider.isFavorite(item) ? Colors.red : Colors.black54,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
