import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Fashapp'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

void secondExample() {
  runApp(MaterialApp(
    home: Center(child: Row(children: <Widget>[Text('two'), Text('three')])),
  ));
}

void thirdExample() {
  runApp(MaterialApp(
      home: GridView.count(
    crossAxisCount: 5,
    children: <Widget>[
      Text('one'),
      Text('two'),
      Text('the'),
      Text('one'),
      Text('two'),
      Text('three'),
      Text('one'),
      Text('two'),
      Text('three'),
      Text('one'),
      Text('to'),
      Text('three'),
      Text('one'),
      Text('two'),
      Text('five'),
    ],
  )));
}
