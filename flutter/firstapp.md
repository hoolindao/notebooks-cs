### 编写我的第一个Flutter应用：Material App 

[搭建好环境后，就可以开始尝试了](./getready.md)

> **你会学到什么:**
>
> - Flutter应用程序的基本结构.
> - 查找和使用packages来扩展功能.
> - 使用热重载加快开发周期.
> - 如何实现有状态的widget.
> - 如何创建一个无限的、延迟加载的列表.
> - 如何创建并导航到第二个页面.
> - 如何使用主题更改应用程序的外观.

> **你会用到什么？**
>
> 您需要安装以下内容:
>
> - Flutter SDK
>   Flutter SDK包括Flutter的引擎、框架、widgets、工具和Dart SDK。此示例需要v0.1.4或更高版本
> - Android Studio IDE
>   此示例使用的是Android Studio IDE，但您可以使用其他IDE，或者从命令行运行

#### [主要步骤](<https://flutterchina.club/get-started/codelab/>)

- 创建项目 [startup_namer](./startup_namer)

  - reformat code with dartfmt 修复粘贴的代码缩进格式
  - 编辑 **[lib/main.dart](./startup_namer/lib/main.dart)** 的Dart代码实现 display "Hello World"

  ```dart
  // Flutter应用程序的基本结构.
  // main() 程序入口
  // StatelessWidget
  // 在Flutter中，大多数东西都是widget，包括对齐(alignment)、填充(padding)和布局(layout)
  // widget的主要工作是提供一个build()方法来描述如何根据其他较低级别的widget来显示自己 ？
  
  import 'package:flutter/material.dart';
  // Material是一种标准的移动端和web端的视觉设计语言
  
  void main() => runApp(new MyApp());
  // main函数使用了(=>)符号, 这是Dart中单行函数或方法的简写。
  // 即
  // void main() {
  //	runApp(new MyApp());
  // }
  
  class MyApp extends StatelessWidget {
    // 该应用程序继承了 StatelessWidget，这将会使应用本身也成为一个widget。
    // Stateless widgets 是不可变的, 这意味着它们的属性不能改变 - 所有的值都是最终的.?
    @override
    Widget build(BuildContext context) { // 这里参数是什么？
      return new MaterialApp(
        title: 'Welcome to Flutter',
        // Scaffold 是 Material library 中提供的一个widget
        // 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性
        home: new Scaffold(
          appBar: new AppBar( // 默认导航栏
            title: new Text('Welcome to Flutter, My Friend'), // 标题
          ),
          body: new Center( //包含主屏幕widget树的body属性
            // widget树可以很复杂 ？
            // 测试发现，widget树可任意嵌套
            child: new Text('Hello World'),
          ),
        ),
      );
    }
  }
  ```

- 使用package: [english_words](https://pub.dartlang.org/packages/english_words) 其中包含数千个最常用的英文单词以及一些实用功能

  - 配置 [pubspec.yaml](./startup_namer/pubspec.yaml)

  ```yaml
  # pubspec文件管理Flutter应用程序的assets(资源，如图片、package等)。
  dependencies:
    flutter:
      sdk: flutter
  
    # The following adds the Cupertino Icons font to your application.
    # Use with the CupertinoIcons class for iOS style icons.
    cupertino_icons: ^0.1.2
    english_words: ^3.1.0 # add this code here
  ```

  - 将依赖包安装到项目

  > 在Android Studio的编辑器视图中查看 pubspec？时，单击右上角的 **Packages get**

  ```shell
  # 可以在控制台中看到以下内容
  -------------------------
  flutter packages get
  Running "flutter packages get" in startup_namer...
  Process finished with exit code 0
  -------------------------
  ```

  - 在 **[lib/main.dart](./startup_namer/lib/main.dart)** 中, 引入 `english_words`

  ```dart
  import 'package:flutter/material.dart';
  import 'package:english_words/english_words.dart'; // add this code here
  //呈现灰色的导入字符串，表示导入的库尚未使用（到目前为止）
  ```

  - 在 **[lib/main.dart](./startup_namer/lib/main.dart)** 中，使用 English words 包生成文本来替换字符串“Hello World”

    - [驼峰命名法](<https://zh.m.wikipedia.org/wiki/%E9%A7%9D%E5%B3%B0%E5%BC%8F%E5%A4%A7%E5%B0%8F%E5%AF%AB>), upper camel case, pascal case

    > 表示字符串中的每个单词（包括第一个单词）都以大写字母开头。所以，“uppercamelcase” 变成 “UpperCamelCase”
    >
    > -- [代码风格的一种](<https://zh.m.wikipedia.org/wiki/%E4%BB%A3%E7%A0%81%E9%A3%8E%E6%A0%BC>)
    >
    > -- 动词首字母不大写，名词首字母均大写

  ```dart
    @override
    Widget build(BuildContext context) {
      // 随机选取单词, 存储在 wordPair 变量中
      // 此方法写在内部，故每次热重载都会使正在运行的应用程序中选择不同的单词对
      // 因为，每次 MaterialApp 需要渲染时或者在Flutter Inspector中切换平台时 build 都会运行.
      final wordPair = new WordPair.random(); // add code here
      // final?
      // 为什么这里用分号？
      // 	A：函数参数用（，）隔开，单行表达式用（；）表示结束
      
      return new MaterialApp(
           ...
           body: new Center(
            //child: new Text('Hello World'),
            // 输出选取的单词并设置显示格式
            child: new Text(wordPair.asPascalCase), // add code here
           ),
      );
    }
  ```

- 添加Stateful widget

  - 实现依赖两个类

    - StatefulWidget 类
    - State 类 StatefulWidget类本身是不变的，但是 State类在widget生命周期中始终存在.

  - 方法

    - 添加有状态的 RandomWords widget

    ```dart
    // 添加到 main.dart 文件底部
    // RandomWords widget除了创建State类之外几乎没有其他任何东西
    class RandomWords extends StatefulWidget {
      @override
      createState() => new RandomWordsState();
    }
    ```

    - 建立 RandomWordsState 类

    ```dart
    class RandomWordsState extends State<RandomWords> {
    }
    
    // -----------------------------------
    // 添加状态类后，IDE会提示该类缺少build方法
    // -----------------------------------
    
    // 添加一个基本的build方法
    class RandomWordsState extends State<RandomWords> {
      @override
      Widget build(BuildContext context) {
        final wordPair = new WordPair.random();
        return new Text(wordPair.asPascalCase);
      }
    }
    
    ```

    - 修改 `MyAPP`  将生成单词对从RandomWordsState移动到MyApp中

    ```dart
      Widget build(BuildContext context) {
        // final wordPair = new WordPair.random();  // 删除此行
        return new MaterialApp(
            ...
    		body: new Center(
              //child: new Text(wordPair.asPascalCase),
              child: new RandomWords(), // add this code
            ), 
        );
      }
    ```

  - 目前为止，只是用 Stateful widget 再实现随机生成单词的方法，从显示效果来看，并没有变

  > 这个类将保存随着用户滚动而无限增长的生成的单词对， 以及喜欢的单词对，用户通过重复点击心形 ❤️ 图标来将它们从列表中添加或删除。
  >
  > -- 后续会用到？

  

> 今天 3/27 先学到这里 
>
> - Flutter应用程序的基本结构.
> - 查找和使用packages来扩展功能.
> - 使用热重载加快开发周期.
> - 如何实现有状态的widget. （原理未知）
> - 驼峰命名风格



- 创建ListView

  > 在这一步中，您将扩展（继承）RandomWordsState类，以生成并显示单词对列表。 当用户滚动时，ListView中显示的列表将无限增长。 ListView的`builder`工厂构造函数? 允许您按需建立一个懒加载? 的列表视图。

  - _suggestions 列表

    - 在Dart语言中使用下划线前缀标识符，会强制其变成私有的
    - 添加一个`biggerFont`变量来增大字体大小

    ```dart
    class RandomWordsState extends State<RandomWords> {
      final _suggestions = <WordPair>[]; // add here  
      // <?>[] ?
      // 	A：向量？
    
      final _biggerFont = const TextStyle(fontSize: 18.0); // add here
      ...
    }
    ```

  - 向RandomWordsState类添加一个 `_buildSuggestions()` 函数. 此方法构建显示建议单词对的ListView。

  ```dart
  class RandomWordsState extends State<RandomWords> {
    ...
    // add follow
    Widget _buildSuggestions() {
      return new ListView.builder( // ListView 类
        padding: const EdgeInsets.all(16.0),
        // ListView类提供了一个builder属性
        // itemBuilder 值是一个匿名回调函数， 接受两个参数- BuildContext和行迭代器i
        // 功能：
        // 	对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
        // 	在偶数行，该函数会为单词对添加一个ListTile row.
        // 	在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
        // 	注意，在小屏幕上，分割线看起来可能比较吃力。
        // 过程：
        //	迭代器从0开始，每调用一次该函数，i就会自增1，对于每个建议的单词对都会执行一次 ？
        itemBuilder: (context, i) {
          // 在每一列之前，添加一个1像素高的分隔线widget
          if (i.isOdd) return new Divider();
  
          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
          // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
          final index = i ~/ 2;
          // 如果是建议列表中最后一个单词对
          if (index >= _suggestions.length) {
            // ...接着再生成10个单词对，然后添加到 建议列表
            _suggestions.addAll(generateWordPairs().take(10));
          }
          // 对于每一个单词对，_buildSuggestions函数都会调用一次_buildRow 
          return _buildRow(_suggestions[index]); // 根据建议列表内容构造行
        }
      );
    }
  }
  ```

  - 在RandomWordsState中添加一个`_buildRow`函数 :

  ```dart
  class RandomWordsState extends State<RandomWords> {
    ...
    // add follow
    // 这个函数在ListTile中显示每个新词对，这使您在下一步中可以生成更漂亮的显示行
    Widget _buildRow(WordPair pair) {
      return new ListTile(
        title: new Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    }
  }
  ```

  - 使用`_buildSuggestions()`

  ```dart
  // 更新RandomWordsState的build方法以使用_buildSuggestions()
  // 而不是直接调用单词生成库
  class RandomWordsState extends State<RandomWords> {
    ...
    @override
    Widget build(BuildContext context) {
      // final wordPair = new WordPair.random(); // 删除这两行
      // return new Text(wordPair.asPascalCase);
      return new Scaffold (
        appBar: new AppBar(
          title: new Text('Startup Name Generator'),
        ),
        body: _buildSuggestions(),
      );
    }
    ...
  }
  ```

  - 更新MyApp的build方法。从MyApp中删除Scaffold和AppBar实例。 这些将由RandomWordsState管理

  ```dart
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'Startup Name Generator',
        home: new RandomWords(),
      );
    }
  }
  ```

  >  重新启动应用程序。你应该看到一个单词对列表。尽可能地向下滚动，您将继续看到新的单词对。

- 添加交互

- 导航到新页面

- 主题更改UI