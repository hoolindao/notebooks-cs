import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());
// 3/27： MyApp 使用 Scaffold 管理单个单词对显示
// home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Welcome to Flutter, My Friend'),
//        ),
//        body: new Center(
//          // child: new Text('Hello World'),
//          // child: new Text(wordPair.asPascalCase),
//          child: new RandomWords(),
//        ),
//      ),
// 3/28：更新，将内容构造交由RandomWordsState管理
// 3/28: 使用主题更改 UI
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return new MaterialApp(
      // title: 'Welcome to Flutter',
      title:'Startup Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.white ,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

// 构建 ListView
// 添加 收藏功能
class RandomWordsState extends State<RandomWords> {
  // 3/27：调用随机生成单词对并驼峰风格显示
  // 3/28：更新RandomWordsState的build方法以使用_buildSuggestions()
  // 3/28: 在 appBar 上添加列表图标
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        // 当用户点击列表图标时，包含收藏夹的新路由页面入栈显示
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  // 此方法用来构建显示建议单词对的 ListView
  // 描述:
  //  在偶数行，该函数会为单词对添加一个ListTile row.
  // 	在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i){
          if (i.isOdd) return new Divider();
          // 用于正确索引建议列表
          final index = i ~/ 2;  // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整）
          // 到列表尾，再生成10个单词对，添加到建议列表
          if (index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          // 对于每一个单词对，_buildSuggestions函数都会调用一次_buildRow
          return _buildRow(_suggestions[index]);
        }
    );
  }
  // 此方法用来生成更漂亮的显示行
  // 添加💗图标，和交互功能
  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      // 当心形❤图标被点击时，函数调用setState()通知框架状态已经改变。
      // 如果单词条目已经添加到收藏夹中， 再次点击它将其从收藏夹中删除。
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
  // 建立一个路由并将其推入到导航管理栈中
  void _pushSaved(){
    // 使路由入栈
    Navigator.of(context).push(
      // 建立路由
      new MaterialPageRoute(
          builder: (context) {
            // ListTile 行
            final tiles = _saved.map(
                (pair) {
                  return new ListTile(
                    title: new Text(
                      pair.asPascalCase,
                      style: _biggerFont,
                    ),
                  );
                },
            );
            // 分割线
            final divided = ListTile
              .divideTiles(
                context: context,
                tiles: tiles
              )
              .toList();
            // builder 返回 Scaffold
            return new Scaffold(
              appBar: new AppBar(
                title: new Text('Saved Suggestions'),
              ),
              body: new ListView(children: divided,),
            );
          },
      ),
    );
  }
}
