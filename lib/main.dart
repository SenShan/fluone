import 'package:flutter/material.dart';
import 'package:fluone/bottom/HomeScreen.dart';
import 'package:fluone/bottom/MineScreen.dart';
import 'package:fluone/bottom/MoreScreen.dart';
import 'package:fluone/bottom/ShopScreen.dart';

void main() => runApp(MainMenu());

class MainMenu extends StatelessWidget {
  // 这个小部件是应用程序的根。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomBarState();
  }
}

class BottomBarState extends State<BottomBar> {
  List<Widget> pages = List<Widget>();
  final defaultColor = Colors.grey;
  final activeColor = Colors.blue;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    pages
      ..add(new HomeScreen())
      ..add(new MoreScreen())
      ..add(new ShopScreen())
      ..add(new MineScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: defaultColor,
            ),
            activeIcon: Icon(
              Icons.home,
              color: activeColor,
            ),
            title: Text(
              '商城',
              style: TextStyle(color: activeColor),
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more,
                color: defaultColor,
              ),
              activeIcon: Icon(
                Icons.more,
                color: activeColor,
              ),
              title: Text(
                '更多',
                style: TextStyle(color: activeColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: defaultColor,
              ),
              activeIcon: Icon(
                Icons.shopping_cart,
                color: activeColor,
              ),
              title: Text(
                '购物车',
                style: TextStyle(color: activeColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: defaultColor,
              ),
              activeIcon: Icon(
                Icons.supervised_user_circle,
                color: activeColor,
              ),
              title: Text(
                '我的',
                style: TextStyle(color: activeColor),
              )),
        ],
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
      body: pages[_index],
    );
  }
}
