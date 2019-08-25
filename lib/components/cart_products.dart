import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = {
    {
      'name': 'Roll-on',
      'picture': 'images/products/rollon.jpg',
      'price': 1720,
      'size': 'M',
      'color': 'Red',
      'quantity': 1
    }
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Text('cuba');
      },
    );
  }
}
