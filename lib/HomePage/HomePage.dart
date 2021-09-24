import 'package:flutter/material.dart';
import 'Categories/Categories.dart';
import 'ImageCarousel/ImageCarousel.dart';
import 'RecentProducts/RecentProducts.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView(
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
    );
  }
}
