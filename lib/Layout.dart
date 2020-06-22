import 'dart:io';

import 'package:fluone/Login.dart';
import 'package:fluone/ToastUtil.dart';
import 'package:flutter/material.dart';
import 'package:fluone/Constant.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutPage();
  }
}

class LayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends State<LayoutPage> {
  final bottomKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    print('--------initState-----------');
  }

  @override
  Widget build(BuildContext context) {
    print('--------build-----------');
    return Scaffold(
        appBar: AppBar(
          title: Text('页面'),
        ),
        drawer: new Login(),
        resizeToAvoidBottomPadding: true,
        body: Padding(
          key: bottomKey,
          padding: EdgeInsets.all(0),
          child: Container(
            padding: EdgeInsets.only(top: 20),
            color: Colors.blueAccent,
            child: Column(
              children: <Widget>[
                backView(),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Color(0xFFF3F3F3),
                ),
                topSearch(),
                createSearch(),
              ],
            ),
          ),
        ));
  }

  Widget backView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new GestureDetector(
          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child:
                Icon(Icons.keyboard_backspace, color: Colors.white, size: 40),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        new GestureDetector(
            child: Image.network(Constant.image, width: 60, height: 40),
            onTap: () {
              ToastUtil.show('图片点击');
            }),
        new GestureDetector(
            child: Text('布局',
                style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 16,
                    decoration: TextDecoration.none)),
            onTap: () {
              ToastUtil.show('布局');
            }),
      ],
    );
  }

  ////头部搜索
  Widget topSearch() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      //color: Colors.red, 这个颜色和边框不能同时存在
      decoration: new BoxDecoration(
        //背景
        color: Colors.white,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(12)),
        //设置四周边框
        border: new Border.all(width: 1, color: Colors.red),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new GestureDetector(
            child: Icon(Icons.search),
            onTap: () {
              ToastUtil.show('搜索');
            },
          ),
          Text(
            '哈哈',
            style: TextStyle(
                backgroundColor: Colors.red,
                color: Colors.yellowAccent,
                fontSize: 20,
                decoration: TextDecoration.none),
          ),
          new GestureDetector(
            child: Icon(Icons.close),
            onTap: () {
              ToastUtil.show('清空');
            },
          ),
        ],
      ),
    );
  }

  String _userID;

  Widget createSearch() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: new BoxDecoration(
        //背景
        color: Colors.white,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(12)),
        //设置四周边框
        border: new Border.all(width: 1, color: Colors.red),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: new TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.text,
          autofocus: true,
          style: TextStyle(fontSize: 15),
          decoration: new InputDecoration(
              border: InputBorder.none,
              hintText: '请输入账号',
              icon: new Icon(
                Icons.search,
                color: Colors.grey,
              )),
          onSaved: (value) => _userID = value.trim(),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(LayoutPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('--------didUpdateWidget-----------');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('--------deactivate-----------');
  }

  @override
  void dispose() {
    super.dispose();
    print('--------dispose-----------');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('--------reassemble-----------');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('--------didChangeDependencies-----------');
  }
}
