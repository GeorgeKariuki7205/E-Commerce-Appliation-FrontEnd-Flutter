import 'package:Geo_Store/HomePage/RecentProducts/RecentProducts.dart';
import 'package:flutter/material.dart';
import 'NavigationDrawer/NavigationDrawer.dart';
import 'ImageCarousel/ImageCarousel.dart';
import 'Categories/Categories.dart';
import 'RecentProducts/RecentProducts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              onPressed: () {})
        ],
      ),
      drawer: NavigationDrawer(),
      body: new ListView(
        children: [
          ImageCarousel(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          //  ADDING A HORIZONTAL LIST VIEW.
          Categories(),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              'New Arrivals',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          RecentProducts()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        // onTap: _updateIndex,
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
            label: "My Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
