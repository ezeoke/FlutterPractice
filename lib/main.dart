import 'package:flutter/material.dart';

void main() {
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

void second() {
  runApp(MaterialApp(
    home: Center(child: Row(children: <Widget>[Text('two'), Text('three')])),
  ));
}
