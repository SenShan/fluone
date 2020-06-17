import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MoreScreenState();
}

class MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text('更多'),
      ),
    );
  }
}