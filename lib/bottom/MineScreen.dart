import 'package:flutter/material.dart';

class MineScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MineScreenState();
}

class MineScreenState extends State<MineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text('我的'),
      ),
    );
  }
}
