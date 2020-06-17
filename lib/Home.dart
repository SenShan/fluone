import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0), // 设置边距，上下左右全为32
      child: new Row(
        children: [
          new Expanded( //上下文本的Widget
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 从Widget的开始处绘制内容
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0), // 控制文本的外边距为底部8像素
                  child: new Text('Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,  // 设置字体为粗体
                    ),
                  ),
                ),
                new Text('Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],   // 设置字体颜色为灰色
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,   // 设置icon
            color: Colors.red[500],  // 设置图标颜色为红色
          ),
          new Text('41'),
        ],
      ),
    );
  }
}