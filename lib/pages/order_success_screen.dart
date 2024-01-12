import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: SvgPicture.asset('assets/image/bags.svg'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Success!",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Your order will be delivered soon.\n Thank you for choosing our app!!",
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 49,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                onPressed: () {},
                child: Text('Continue shopping'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
