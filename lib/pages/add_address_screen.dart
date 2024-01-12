import 'package:flutter/material.dart';
import 'package:livingliquidz/modal/address.dart';
import 'package:provider/provider.dart';

import '../modal/address_viewmodel.dart';

class AddAddressScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressDetailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final addressViewModel = Provider.of<AddressViewModel>(context,listen: false);
    TextEditingController _addressController = TextEditingController();
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
          "Add Shipping Address",
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Enter your address',
              ),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Full name',
              ),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Phone',
              ),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Address Description',
              ),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Enter your address',
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
                onPressed: () {
                  var addressViewModel;
                  addressViewModel.addAddress(Address(
                      id: "",
                      userName: nameController.text,
                      phone: phoneController.text,
                      addressTitle1: addressDetailController.text,
                      addressTitle2: ""));
                },
                child: Text('save address'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
