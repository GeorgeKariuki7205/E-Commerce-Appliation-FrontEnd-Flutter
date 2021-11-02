import 'package:Geo_Store/HomePage/RecentProducts/RecentProducts.dart';
import 'package:flutter/material.dart';

class SingleCategory extends StatefulWidget {
  final String name;
  SingleCategory({this.name});
  @override
  _SingleCategoryState createState() => _SingleCategoryState();
}

class _SingleCategoryState extends State<SingleCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleCategoryProducts(),
    );
  }
}

class SingleCategoryProducts extends StatefulWidget {
  @override
  _SingleCategoryProductsState createState() => _SingleCategoryProductsState();
}

class _SingleCategoryProductsState extends State<SingleCategoryProducts> {
  var product_list = [
    {
      "name": "Blazzer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 80
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 80
    },
    {
      "name": "Heals",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 80
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 80
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 80
    },
    {
      "name": "Skirts",
      "picture": "images/products/skt2.jpeg",
      "old_price": 120,
      "price": 80
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("name"),
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
      body: GridView.builder(
          itemCount: product_list.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return SingleProduct(
              name: product_list[index]['name'],
              picture: product_list[index]['picture'],
              oldPrice: product_list[index]['old_price'],
              price: product_list[index]['price'],
            );
          }),
    );
  }
}
