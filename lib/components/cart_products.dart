import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart = [
    {
      'name': 'Roll-on',
      'picture': 'images/products/rollon.jpg',
      'price': 1720,
      'size': 'M',
      'color': 'Red',
      'quantity': 1
    },
    {
      'name': 'Slippers',
      'picture': 'images/products/slippers.jpg',
      'price': 1620,
      'size': '8',
      'color': 'Blue',
      'quantity': 1
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: products_on_the_cart[index]['name'],
          cart_prod_price: products_on_the_cart[index]['price'],
          cart_prod_pics: products_on_the_cart[index]['picture'],
          cart_prod_size: products_on_the_cart[index]['size'],
          cart_prod_color: products_on_the_cart[index]['color'],
          cart_prod_qty: products_on_the_cart[index]['quantity'],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pics;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_pics,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ====leading section=====
        leading: Image.asset(
          cart_prod_pics,
          width: 80,
          height: 80,
        ),

        //======title section=====
        title: Text(cart_prod_name),

        //=====subtitle section=======
        subtitle: Column(
          children: <Widget>[
            //ROW INSIDE COLUMN=============
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child:
                      Text(cart_prod_size, style: TextStyle(color: Colors.red)),
                ),

                //=====This section is for product color====
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: Text("Color"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(cart_prod_color,
                      style: TextStyle(color: Colors.red)),
                ),
              ],
            ), //=====This section is for product price====
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '\N${cart_prod_price}',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
        // trailing: Column(
        //   children: <Widget>[
        //     IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
        //     // Text('${cart_prod_qty}'),
        //     IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
        //   ],
        // ),
      ),
    );
  }
}
