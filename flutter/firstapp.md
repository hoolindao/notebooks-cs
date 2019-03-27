### 编写我的第一个Flutter应用

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
  - 编辑 **lib/main.dart** 的Dart代码实现 display "Hello World"

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
  
  class MyApp extends StatelessWidget {
    // 该应用程序继承了 StatelessWidget，这将会使应用本身也成为一个widget。
    @override
    Widget build(BuildContext context) { // 这里参数是什么？
      return new MaterialApp(
        title: 'Welcome to Flutter',
        home: new Scaffold(
            // Scaffold 是 Material library 中提供的一个widget
            // 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性
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

  

- 使用package

- 添加Stateful widget

- 创建ListView

- 添加交互

- 导航到新页面

- 主题更改UI