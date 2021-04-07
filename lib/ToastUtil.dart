import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {
  static void show(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.redAccent,
    );
  }

  static void showD(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('用户协议'),
          content: Text('您必须接受用户协议才能继续使用'),
          actions: <Widget>[
            FlatButton(
              child: Text('好的'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('拒绝'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 20,
          semanticLabel: '哈哈哈哈',
          // 设置成 圆角
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }
  static void back(BuildContext context){
    Navigator.pop(context);
  }
}
