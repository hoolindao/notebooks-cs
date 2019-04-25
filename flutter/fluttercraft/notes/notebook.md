
- Widget实际上就是Element的配置数据，Widget树实际上是一个配置树，而真正的UI渲染树是由Element构成；不过，由于Element是通过Widget生成，所以它们之间有对应关系，所以在大多数场景，我们可以宽泛地认为Widget树就是指UI控件树或UI渲染树。
- 一个Widget对象可以对应多个Element对象。这很好理解，根据同一份配置（Widget），可以创建多个实例（Element）。

简单认为Stateful widget 和Stateless widget有两点不同：

Stateful widget可以拥有状态，这些状态在widget生命周期中是可以变的，而Stateless widget是不可变的。

Stateful widget至少由两个类组成：

- 一个StatefulWidget类。
- 一个 State类； StatefulWidget类本身是不变的，但是 State类中持有的状态在widget生命周期中可能会发生变化。

Dart IO库操作文件的API非常丰富，但本书不是介绍Dart语言的，故不详细说明，读者需要的话可以自行学习。

个人范式

routes 继承 stateless，并用 Scaffold 构建内容
widget 继承 statefull

因为 routes 继承 MaterialPage
```dart
          Navigator.push( context,
           new MaterialPageRoute(builder: (context) {
                  return new NewRoute();
             }));
```

 这里有个小 Tip ，当代码框里输入 stl 的时候，可以自动弹出创建无状态控件的模板选项，而输入 stf 的时，就会弹出创建有状态 Widget 的模板选项。
  代码格式化的时候，括号内外的逗号都会影响格式化时换行的位置。
  如果觉得默认换行的线太短，可以在设置-Editor-Code Style-Dart-Wrapping and Braces-Hard wrap at 设置你接受的数值。

作者：恋猫de小郭
链接：https://juejin.im/post/5b631d326fb9a04fce524db2
来源：掘金
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

## flutter 布局

 Flutter 中拥有需要将近30种内置的 布局Widget，其中常用有 Container、Padding、Center、Flex、Stack、Row、Column、ListView 等，下面简单讲解它们的特性和使用。

## flutter 页面

Flutter 中除了布局的 Widget，还有交互显示的 Widget 和完整页面呈现的Widget。其中常见的有 MaterialApp、Scaffold、Appbar、Text、Image、FlatButton等。下面简单介绍这些 Wdiget，并完成一个页面。
