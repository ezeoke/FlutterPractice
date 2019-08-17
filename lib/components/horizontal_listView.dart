import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Icon(Icons.account_box),
          Icon(Icons.account_box),
          Icon(Icons.account_box),
          Icon(Icons.account_box),
          Icon(Icons.account_box),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(80),
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(image_location),
            subtitle: Text(image_caption),
          ),
        ));
  }
}
