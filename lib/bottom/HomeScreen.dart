import 'dart:ui';

import 'package:fluone/Button.dart';
import 'package:fluone/Layout.dart';
import 'package:fluone/ToastUtil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();
  String content = '';
  bool check;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQueryData.fromWindow(window).padding.top,
            ),
            child: Container(
              height: 52.0,
              child: new Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Card(
                      child: new Container(
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: TextField(
                              controller: controller,
                              decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 0.0),
                                  hintText: 'Search',
                                  border: InputBorder.none),
                              // onChanged: onSearchTextChanged,
                              onChanged: (String r) => {
                                    setText(r),
                                  },
                            ),
                          ),
                        ),
                        new IconButton(
                          icon: new Icon(Icons.cancel),
                          color: Colors.grey,
                          iconSize: 18.0,
                          onPressed: () {
                            controller.clear();
                            setText('');
                            // onSearchTextChanged('');
                          },
                        ),
                      ],
                    ),
                  ))),
            ),
          ),
        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            jump('布局',Layout()),
            jump('按钮学习',Button()),
          ],
        ),
        new Switch(
            value: false,
            onChanged: (bln) => {
                  ToastUtil.show(bln.toString()),
                })
      ],
    ));
  }

  Widget jump(String text,Widget view) {
    return new MaterialButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: new Text('$text'),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return view;
        }));
      },
    );
  }

  void setText(String s) {
    setState(() {
      content = s;
    });
  }
}
