import 'package:e_commerce_app/pages/CartPage.dart';
import 'package:e_commerce_app/pages/ItemPage.dart';
import 'package:e_commerce_app/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'new app',
      // home: HomePage(),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },

      // <-- This is enough!
      // routes: {"/": (context) => HomePage()}, // <-- REMOVE THIS LINE
    );
  }
}
