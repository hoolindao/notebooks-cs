import 'package:flutter/material.dart';
import 'package:fluttercraft/file_operation.dart';

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    // DONE: implement build
    return new ListView(
        padding: const EdgeInsets.only(),
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text('XXXXX'),
            accountEmail: new Text('XXXXXXXXXXX'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                'http://n.sinaimg.cn/translate/20170726/Zjd3-fyiiahz2863063.jpg'),
            ),
          ),
          new ListTile(
            title: new Text('test'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              debugPrint('cath tap');
              Navigator.push( context,
                new MaterialPageRoute(builder: (context) {
                return new FileOpTestPage();
                }));
            },
          ),
        ]
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('目录'),
      ),
      body: new ContentWidget(),
    );
  }
}