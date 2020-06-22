import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '登录',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = new GlobalKey<FormState>();
  String _userID;
  String _passWord;
  bool _isChecked = true;
  bool _isLoading;
  IconData _checkIcon = Icons.check_box;

  void _changeFormToLogin() {
    _formKey.currentState.reset();
  }

  void _onLogin() {
    final form = _formKey.currentState;
    form.save();
    if (_userID == '' || _passWord == '') {
      _showMessageDialog('账号或密码不可为空');
    }
  }

  void _showMessageDialog(String s) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text('提示'),
            content: new Text(s),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: new Text('OK'))
            ],
          );
        });
  }

  Widget _showEmailInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
      child: new TextFormField(
        maxLength: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        style: TextStyle(fontSize: 15),
        decoration: new InputDecoration(
            border: InputBorder.none,
            hintText: '请输入账号',
            icon: new Icon(
              Icons.email,
              color: Colors.grey,
            )),
        onSaved: (value) => _userID = value.trim(),
        onFieldSubmitted: (value){

        },
        onEditingComplete: (){

        },
      ),
    );
  }

  getData() {
    var http = new HttpClient();
  }

  Widget _showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        style: TextStyle(fontSize: 15),
        decoration: new InputDecoration(
            border: InputBorder.none,
            hintText: '请输入密码',
            icon: new Icon(
              Icons.lock,
              color: Colors.grey,
            )),
        onSaved: (value) => _passWord = value.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        middle: const Text('登录'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 30),
            height: 20,
            child: Image(image: AssetImage('assets/images/login_cartoon.png')),
          ),
          Form(
            key: _formKey,
            child: Container(
              height: 180,
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    _showEmailInput(),
                    Divider(
                      height: 0.5,
                      indent: 16.0,
                      color: Colors.grey[300],
                    ),
                    _showPasswordInput(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.fromLTRB(35, 30, 35, 0),
            child: OutlineButton(
              child: Text('登录'),
              textColor: Colors.orange,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              borderSide: BorderSide(color: Colors.orange, width: 1),
              onPressed: () {
                _onLogin();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 50, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                IconButton(
                    icon: Icon(_checkIcon),
                    color: Colors.orange,
                    onPressed: () {
                      setState(() {
                        _isChecked = !_isChecked;
                        if (_isChecked) {
                          _checkIcon = Icons.check_box;
                        } else {
                          _checkIcon = Icons.check_box_outline_blank;
                        }
                      });
                    }),
                Expanded(
                  child: RichText(
                      text: TextSpan(
                          text: '我已经详细阅读并同意',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          children: <TextSpan>[
                        TextSpan(
                            text: '《隐私政策》',
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline)),
                        TextSpan(text: '和'),
                        TextSpan(
                            text: '《用户协议》',
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline))
                      ])),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
