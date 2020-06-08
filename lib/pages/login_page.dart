import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String userName;
  String password;

  void login() {
    var loginForm = loginKey.currentState;
    if (loginForm.validate()) {
      loginForm.save();
      print('user:' + userName + 'pwd:' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form表单'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: loginKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: '请输入用户名'),
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: '请输入密码'),
                      obscureText: true,
                      validator: (value) {
                        return value.length < 6 ? '密码长度不够6位' : null;
                      },
                      onSaved: (value) {
                        password = value;
                      },
                    ),
                    SizedBox(
                      width: 340.0,
                      height: 42.0,
                      child: RaisedButton(
                        onPressed: login,
                        child: Text(
                          '登录',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
