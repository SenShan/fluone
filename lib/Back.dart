import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Back extends StatelessWidget {
  final String text;

  const Back({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                new GestureDetector(
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 40),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          new Expanded(
            child: Text(''),
          ),
        ],
      ),
    );
  }
}
