import 'package:Geo_Store/SingleProduct/SingleProduct.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),

        // child: FavouriteProducts(),
        child: Column(
          children: [
            Text(
              "Favourites.",
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 24),
            ),
            Expanded(
              child: FavouriteProducts(),
            )
          ],
        ),
      ),
    );
  }
}

class FavouriteProducts extends StatefulWidget {
  @override
  _FavouriteProductsState createState() => _FavouriteProductsState();
}

class _FavouriteProductsState extends State<FavouriteProducts> {
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
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return FavouriteProduct(
            name: product_list[index]['name'],
            picture: product_list[index]['picture'],
            oldPrice: product_list[index]['old_price'],
            price: product_list[index]['price'],
          );
        });
  }
}

class FavouriteProduct extends StatelessWidget {
  final name;
  final picture;
  final oldPrice;
  final price;

  FavouriteProduct({this.name, this.picture, this.oldPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new SingleProductDetails(
                      product_deatils_name: name,
                      product_deatils_old_price: oldPrice,
                      product_deatils_picture: picture,
                      product_deatils_price: price,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  title: Text(
                    "\$$price",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "\$$oldPrice",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
