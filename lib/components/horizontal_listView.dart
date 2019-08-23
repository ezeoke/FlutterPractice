import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/categories/first.png',
            image_caption: 'Phones',
          ),
          Category(
            image_location: 'images/categories/eleventh.png',
            image_caption: 'Bags',
          ),
          Category(
            image_location: 'images/categories/forth.png',
            image_caption: 'Tvs',
          ),
          Category(
            image_location: 'images/categories/second.png',
            image_caption: 'ShowBox',
          ),
          Category(
            image_location: 'images/categories/third.png',
            image_caption: 'Projector',
          ),
          Category(
            image_location: 'images/categories/tenth.png',
            image_caption: 'SoundSystems',
          ),
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
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
              width: 120,
              child: ListTile(
                title: Image.asset(
                  image_location,
                  // width: 100,
                  // height: 80,
                ),
                subtitle: Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      image_caption,
                      // style: TextStyle(fontSize: 13),
                    )),
              )),
        ));
  }
}
