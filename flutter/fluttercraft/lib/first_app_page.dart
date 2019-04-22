import 'package:flutter/material.dart';

class FirstAppPage extends StatefulWidget {
  FirstAppPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _State createState() => new _State();
}

class _State extends State<FirstAppPage> {

    int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text("haha"),
    );
  }
}