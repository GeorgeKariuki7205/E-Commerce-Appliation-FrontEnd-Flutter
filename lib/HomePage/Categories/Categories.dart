import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SingleCategory("Dress", 'images/cats/dress.png'),
          SingleCategory("Formal", 'images/cats/formal.png'),
          SingleCategory("Informal", 'images/cats/informal.png'),
          SingleCategory("Jeans", 'images/cats/jeans.png'),
          SingleCategory("Shoes", 'images/cats/shoe.png'),
          SingleCategory("TShirts", 'images/cats/tshirt.png'),
        ],
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String image_location;
  final String image_caption;

  SingleCategory(this.image_caption, this.image_location);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location, width: 100, height: 80.0),
            subtitle: Text(
              image_caption,
              textAlign: TextAlign.center,
              style: new TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
