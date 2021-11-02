import 'package:Geo_Store/Categories/SingleCategory/SingleCategory.dart';
import 'package:flutter/material.dart';

class AllCategories extends StatefulWidget {
  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text(
            "Categories.",
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontWeight: FontWeight.bold, color: Colors.red, fontSize: 24),
          ),
          SingleCategoryToView("Lady Dresses ", 'images/cats/dress.png'),
          SingleCategoryToView("Formal Wear", 'images/cats/formal.png'),
          SingleCategoryToView("Informal Wear", 'images/cats/informal.png'),
          SingleCategoryToView("Men Jeans", 'images/cats/jeans.png'),
          SingleCategoryToView(" All Shoes", 'images/cats/shoe.png'),
          SingleCategoryToView("All TShirts", 'images/cats/tshirt.png'),
        ],
      ),
    );
  }
}

class SingleCategoryToView extends StatelessWidget {
  final String name;
  final String image;

  SingleCategoryToView(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (context) => new SingleCategory(
                // product_deatils_name: 'name',
                // product_deatils_old_price: 20,
                // product_deatils_picture: image,
                // product_deatils_price: 40,
              ))),
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white70,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: new Image.asset(
                        image,
                        height: 60.0,
                        width: 100.0,
                        // fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
