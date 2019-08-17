import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:my_flutter_app/components/horizontal_listView.dart';

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
    Widget image_carousel = new Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/products/baby.jpeg'),
          AssetImage('images/products/cute.jpeg'),
          AssetImage('images/products/fingers.jpeg'),
          AssetImage('images/products/sneaker.jpeg'),
          AssetImage('images/products/tech.jpeg'),
          AssetImage('images/products/weed.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4,
        indicatorBgPadding: 2,
        dotColor: Colors.red,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: Text('Fashapp'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Ezeoke Cuba'),
              accountEmail: Text('ezeokecc@gmail.com'),
              currentAccountPicture: new GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: new Icon(Icons.person, color: Colors.blue),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: new Icon(
                  Icons.home,
                  color: Colors.redAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: new Icon(
                  Icons.account_box,
                  color: Colors.redAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My orders'),
                leading: new Icon(
                  Icons.shopping_basket,
                  color: Colors.redAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: new Icon(
                  Icons.category,
                  color: Colors.redAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: new Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: new Icon(
                  Icons.settings,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: new Icon(
                  Icons.help_outline,
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //image carousel starts here
          image_carousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Categories'),
          ),

          //Horizontal viewList
          HorizontalListView()
        ],
      ),
    );
  }
}

// void secondExample() {
//   runApp(MaterialApp(
//     home: Center(child: Row(children: <Widget>[Text('two'), Text('three')])),
//   ));
// }

// void thirdExample() {
//   runApp(MaterialApp(
//       home: GridView.count(
//     crossAxisCount: 5,
//     children: <Widget>[
//       Text('one'),
//       Text('two'),
//       Text('the'),
//       Text('one'),
//       Text('two'),
//       Text('three'),
//       Text('one'),
//       Text('two'),
//       Text('three'),
//       Text('one'),
//       Text('to'),
//       Text('three'),
//       Text('one'),
//       Text('two'),
//       Text('five'),
//     ],
//   )));
// }
