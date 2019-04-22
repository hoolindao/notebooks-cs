import 'package:flutter/material.dart';
import 'package:fluttercraft/home_page.dart';
import 'package:fluttercraft/first_app_page.dart';


void main() {
  runApp(new MaterialApp(
  title: 'Flutter Demo',
  theme: new ThemeData(
    primarySwatch: Colors.blue,
  ),
  //注册路由表
  routes:{
    '/FirstAppPage': (BuildContext context) => FirstAppPage(),
  } ,home: new HomePage(),
),);
}