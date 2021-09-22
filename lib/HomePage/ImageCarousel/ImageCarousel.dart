import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(

      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg')
        ],
        autoplay: false,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
        dotColor: Colors.white,
      ),

    );

    return image_carousel;
  }
}
