import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//imports
import 'package:fashappapp/components/horizontal_listview.dart';
import 'package:fashappapp/components/products.dart';
void main(){
  runApp(
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
class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context){
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed:(){}
          ),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed:(){}
          ),
        ],//widget
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //         header
            new UserAccountsDrawerHeader(
              accountName: Text('Harshada Kudtarkar'),
              accountEmail: Text('kudtarkarharshada99@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            //           body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          // image carousel begins here
          image_carousel,

          //pading widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          // Horizontal list view
            HorizontalList(),
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),
          ),
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
    );
  }
}