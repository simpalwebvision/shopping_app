import 'package:flutter/material.dart';
import 'package:livingliquidz/pages/add_address_screen.dart';
import 'package:livingliquidz/pages/choice_address_screen.dart';
import 'package:livingliquidz/pages/order_success_screen.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Checkout",
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextHeader(title: "Shop address"),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.1),
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset(2, 2),
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Janne",
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChoiceAddressScreen()));
                        },
                        child: Text(
                          "Change",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "0927827763",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "194 ngyen cong tru",
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Phuong 12 quan 1",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                buildTextHeader(title: "Payment"),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text(
                      "Change",
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddAddressScreen()));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  "Order",
                ),
                Spacer(),
                Text(
                  "11VND",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Delivery",
                ),
                Spacer(),
                Text(
                  "11VND",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Summary",
                ),
                Spacer(),
                Text(
                  "11VND",
                ),
              ],
            ),
            SizedBox(
              height: 40,
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderSuccessScreen()));
                },
                child: Text('Submit order'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextHeader({required String title}) {
    return Text(
      title,
    );
  }
}
