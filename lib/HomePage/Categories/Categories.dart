import 'package:flutter/material.dart';
import 'package:Geo_Store/Categories/SingleCategory/SingleCategory.dart';

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
          SingleCategoryOnList("Dress", 'images/cats/dress.png'),
          SingleCategoryOnList("Formal", 'images/cats/formal.png'),
          SingleCategoryOnList("Informal", 'images/cats/informal.png'),
          SingleCategoryOnList("Jeans", 'images/cats/jeans.png'),
          SingleCategoryOnList("Shoes", 'images/cats/shoe.png'),
          SingleCategoryOnList("TShirts", 'images/cats/tshirt.png'),
        ],
      ),
    );
  }
}

class SingleCategoryOnList extends StatelessWidget {
  final String image_location;
  final String image_caption;

  SingleCategoryOnList(this.image_caption, this.image_location);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => new SingleCategory(
              // product_deatils_name: 'name',
              // product_deatils_old_price: 20,
              // product_deatils_picture: image,
              // product_deatils_price: 40,
            ))),
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
