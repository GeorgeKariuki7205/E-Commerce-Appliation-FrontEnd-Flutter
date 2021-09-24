import 'package:Geo_Store/Categories/AllCategories/AllCategories.dart';
import 'package:Geo_Store/Favorites/Favorites.dart';
import 'package:Geo_Store/HomePage/HomePage.dart';
import 'package:Geo_Store/MyAccount/MyAccount.dart';
import 'package:Geo_Store/ShoppingCart/ShoppingCart.dart';
import 'package:flutter/material.dart';
import 'HomePage/NavigationDrawer/NavigationDrawer.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  List _screens = [
    HomePage(),
    Favorites(),
    AllCategories(),
    ShoppingCart(),
    MyAccount()
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Geo Store'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ShoppingCart()))),
        ],
      ),
      drawer: NavigationDrawer(),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.red[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Favorites",
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
