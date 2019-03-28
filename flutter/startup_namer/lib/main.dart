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
// 3/28： 更新，将内容构造交由RandomWordsState管理
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return new MaterialApp(
      // title: 'Welcome to Flutter',
      title:'Startup Name Generator',
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
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
  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
  // 3/27：调用随机生成单词对并驼峰风格显示
  // 3/28：更新RandomWordsState的build方法以使用_buildSuggestions()
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
}
