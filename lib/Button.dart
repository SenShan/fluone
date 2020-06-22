import 'package:fluone/Back.dart';
import 'package:fluone/ToastUtil.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonPage();
  }
}

class ButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonPageState();
  }
}

class ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Column(
          children: <Widget>[
            Back(text: '布局'),
            RaisedButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("Submit"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {
                    ToastUtil.back(context),
                  },
            ),
            Image.asset("images/gril_1.jpg",width: 200,height: 180,),
          ],
        ),
      ),
    );
  }
}
