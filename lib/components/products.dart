import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'coffee',
      'picture': 'images/products/coffee.jpg',
      'old_price': 1720,
      'price': 1500
    },
    {
      'name': 'Watch',
      'picture': 'images/products/watch.jpg',
      'old_price': 1720,
      'price': 1500
    },
    {
      'name': 'Television',
      'picture': 'images/products/tv.jpg',
      'old_price': 1720,
      'price': 1500
    },
    {
      'name': 'Phone',
      'picture': 'images/products/phone.jpg',
      'old_price': 1720,
      'price': 1500
    },
    {
      'name': 'Roll-on',
      'picture': 'images/products/rollon.jpg',
      'old_price': 1720,
      'price': 1500
    },
    {
      'name': 'Slippers',
      'picture': 'images/products/slippers.jpg',
      'old_price': 1720,
      'price': 1500
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_product(
          prod_name: product_list[index]['name'],
          prod_pics: product_list[index]['picture'],
          prod_oldPrice: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_product extends StatelessWidget {
  final prod_name;
  final prod_pics;
  final prod_price;
  final prod_oldPrice;

  Single_product(
      {this.prod_name, this.prod_pics, this.prod_price, this.prod_oldPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      '\N$prod_price',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      '\N$prod_oldPrice',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_pics,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
