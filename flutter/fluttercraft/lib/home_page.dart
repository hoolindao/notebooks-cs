import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       body: new ContentWeiget(),
    );
  }
}

class ContentWeiget extends StatefulWidget {
   @override
  _ContentWeigetState createState() => new _ContentWeigetState();
}

class _ContentWeigetState extends State<ContentWeiget> {
  @override
  Widget build(BuildContext context) {
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
          title: new Text('First App Page'),
          trailing: new Icon(Icons.arrow_right),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, '/FirstAppPage');
          }
        ),
      ],
    );
  }
}