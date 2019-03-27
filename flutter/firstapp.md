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

#### 主要步骤

- 创建项目

  - reformat code with dartfmt 修复粘贴的代码缩进格式
  - 编写 "Hello World"

  ```dart
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