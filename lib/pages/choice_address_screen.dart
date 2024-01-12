import 'package:flutter/material.dart';

class ChoiceAddressScreen extends StatefulWidget {
  @override
  _ChoiceAddressScreenState createState() => _ChoiceAddressScreenState();
}

class _ChoiceAddressScreenState extends State<ChoiceAddressScreen> {
  List<String> addresses = [
    '123 Main St, Cityville',
    '456 Oak Ave, Townsville',
    '789 Pine Ln, Villageton',
  ];

  String selectedAddress = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Address'),
      ),
      body: ListView.builder(
        itemCount: addresses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(addresses[index]),
            onTap: () {
              setState(() {
                selectedAddress = addresses[index];
              });
              // You can navigate to the next screen or perform other actions here
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Selected Address: $selectedAddress',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChoiceAddressScreen(),
  ));
}
