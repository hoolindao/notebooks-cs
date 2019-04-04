# Python交互模式的用处

执行单行Python代码，并输出返回值

```shell
>>> 100 + 22
122

>>> print('hello, world')
hello, world

>>> 2**10
1024

>>> print(2**10)
1024

```

- 能否执行一行代码但多个表达式？
能
Python 可以在同一行中使用多条语句，语句之间使用分号;分割。

```shell
>>> import sys; x = 'hello world'; sys.stdout.write(x + '\n')
hello world
12
```

## 交互模式执行Python代码和命令行执行包含该代码的py文件的区别

> Python交互模式的代码是输入一行，执行一行，而命令行模式下直接运行.py文件是一次性执行该文件内的所有代码。

如上例，在交互模式中执行`2**10`可看到输出结果，而执行只含`2**20`的.py文件并不会在命令行窗口得到输出，除非代码中使用`print`函数。

> 可见，Python交互模式主要是为了调试Python代码用的，也便于初学者学习，它不是正式运行Python代码的环境！

## 参考

- <https://www.liaoxuefeng.com/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431611988455689d4c116b2c4ed6aec000776c00ed52000>
