import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShopScreenState();
}

class ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text('购物车'),
      ),
    );
  }
}