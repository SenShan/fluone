import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 这个小部件是应用程序的根。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //这是你申请的主题。
      //试着用“flutter run”运行你的应用程序。你会看到
      //应用程序有一个蓝色工具栏。然后，在不退出应用程序的情况下，尝试
      //将下面的primarySwatch更改为颜色.绿色然后调用
      //“热重新加载”（按控制台中的“r”，在其中运行“颤振运行”，
      //或者只需将更改保存到Flutter IDE中的“热重新加载”。
      //注意，计数器没有重置回零；应用程序
      //未重新启动。
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter学习'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  //这个小部件是应用程序的主页。它是有状态的，意思是
  ////它有一个State对象（定义如下），该对象包含影响
  ////看起来怎么样。
  ////这个类是状态的配置。它保存的值（在这个
  ////case the title）由父程序（在本例中是App小部件）提供，并且
  ////由状态的生成方法使用。小部件子类中的字段是
  ////始终标记为“最终”。

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //这个对setState的调用告诉Flutter框架
//在此状态下更改，这将导致它重新运行下面的生成方法
//以便显示可以反映更新的值。如果我们改变了
//不调用setState（）的计数器，则生成方法将不会
//又打电话来了，看来什么也不会发生。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //每次调用setState时都会重新运行此方法，例如
//通过上面的递增计数器方法。
//
//对颤振框架进行了优化，以制定重新运行的建造方法
//很快，这样你就可以重建任何需要更新的东西
//而不是单独更改小部件的实例。
    return Scaffold(
      appBar: AppBar(
        //在这里，我们从MyHomePage对象中获取值，该对象是由
//那个应用程序生成方法，并使用它设置appbar标题。
        title: Text(widget.title),
      ),
      body: Center(
        //中心是一个布局小部件。它只需要一个孩子
//在父母中间。
        child: Column(
          //列也是布局小部件。需要一张孩子的名单
//垂直排列。默认情况下，它会自行调整大小以适应
//孩子们水平着，尽量和父母一样高。
//
//调用“调试绘制”（在控制台中按“p”，选择
//Android中Flutter检查器的“Toggle Debug Paint”操作
//或Visual Studio代码中的“Toggle Debug Paint”命令）
//查看每个小部件的线框。
//
//列具有各种属性来控制其自身大小和
//如何定位孩子。这里我们使用mainAxisAlignment来
//使子对象垂直居中；这里的主轴是垂直的
//因为列是垂直的（交叉轴是
//水平）。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '你点击按钮:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
