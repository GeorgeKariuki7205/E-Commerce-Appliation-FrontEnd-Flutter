// import 'package:Geo_Store/LandingPage.dart';
import 'package:flutter/material.dart';

import 'LandingPage.dart';
void main(){
  runApp(
    // new MaterialApp(
    //   debugShowCheckedModeBanner: false,
    // home: HomePage()
    // )
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geo Store',
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


