import 'package:flutter/material.dart';

class ImageTextWidget extends StatelessWidget {
  final String passedText, imageString;
  final VoidCallback onTap;
  final Color bgColor;

  const ImageTextWidget(
      {super.key,
      required this.imageString,
      required this.passedText,
      required this.onTap,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageString,
              height: 25,
              width: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              passedText,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
