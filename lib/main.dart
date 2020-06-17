import 'package:fluone/BottomBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 这个小部件是应用程序的根。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBar(),
    );
  }
}
