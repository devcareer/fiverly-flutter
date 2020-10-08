import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/features/shipping_details/components/shipping_address_user.dart';
import 'package:fiverly_flutter/features/shipping_details/screen/add_shipping_address.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatefulWidget {
  @override
  _ShippingAddressState createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  final _addresses = List.generate(5, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(title: Text("Shipping Addresses")),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: _addresses.map((e) => UserInfoShippingAddress()).toList(),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: () => changeScreen(context, AddShippingAddress()),
      ),
    );
  }
}
