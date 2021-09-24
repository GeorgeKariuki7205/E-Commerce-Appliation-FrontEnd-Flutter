import 'package:flutter/material.dart';

class SingleProductDetails extends StatefulWidget {
  final product_deatils_name;
  final product_deatils_price;
  final product_deatils_old_price;
  final product_deatils_picture;

  SingleProductDetails(
      {this.product_deatils_name,
      this.product_deatils_old_price,
      this.product_deatils_picture,
      this.product_deatils_price});

  @override
  _SingleProductDetailsState createState() => _SingleProductDetailsState();
}

class _SingleProductDetailsState extends State<SingleProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(widget.product_deatils_name),
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
      body: new ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_deatils_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_deatils_name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  title: new Row(
                    children: [
                      Expanded(
                        child: new Text(
                          "\$ ${widget.product_deatils_old_price}",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "\$ ${widget.product_deatils_price}",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose The Size."),
                            actions: [
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text(
                                  "close",
                                  style: new TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    elevation: 0.2,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text(
                      "Buy Now.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
              IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
