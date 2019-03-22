import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own import packages
import 'package:flutter_ecomm/components/horizontal_listview.dart';
import 'package:flutter_ecomm/components/products.dart';
import 'package:flutter_ecomm/pages/cart.dart';

void main(){
  runApp(
    //widget
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/carousel/try1.jpg'),
        AssetImage('images/carousel/try2.jpg'),
        AssetImage('images/carousel/try3.jpg'),
        AssetImage('images/carousel/try4.jpg'),
      ],
      autoplay: false,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
  );


    return Scaffold(
      appBar: new AppBar(
        elevation: 0.01,
        backgroundColor: Colors.cyan,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(accountName: Text('Morris Mburu'),
                accountEmail: Text('morrisonmburu7@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.black87,
                child: Icon(Icons.person, color: Colors.blueAccent,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.cyan
            ),
            ),
            //body
            
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.cyan,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Accounts'),
                leading: Icon(Icons.person, color: Colors.cyan,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.cyan,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.cyan,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite_border, color: Colors.cyan,),
              ),
            ),
            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About us'),
                leading: Icon(Icons.help,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),

          //Horizontal list view begins here,
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          ),

        ],
      ),
    );
  }
}
