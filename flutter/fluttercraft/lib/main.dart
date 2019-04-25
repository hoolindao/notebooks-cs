import 'package:flutter/material.dart';
import 'package:fluttercraft/home_page.dart';

void main() => runApp(
  new MaterialApp(
      title: 'Wlecome To FlutterCraft',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    )
);

