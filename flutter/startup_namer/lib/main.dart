import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter, My Friend'),
        ),
        body: new Center(
          // child: new Text('Hello World'),
          child: new Center(
            child: new Text("eat me"),
          )
        ),
      ),
    );
  }
}
