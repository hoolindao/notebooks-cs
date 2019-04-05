# 基本输入输出`input()`和`print()`的使用

## 输出

### 例子1

```python
print('simple output')
```

```shell
$ python test.py
simple output
```

### 例子2

```python
print('simple', 'output')
```

```shell
$ python test.py
simple output
```

### 例子3

```python
print('100 + 1 =', 100 + 1)
```

```shell
$ python test.py
100 + 1 = 101
```

### `print()`总结

- 输出'strings'的内容
- 逗号隔开多个`参数`，且每个逗号在输出格式中`占一个空格`
- 能识别表达式并执行，输出其返回值

## 输入

### 例子1

```python
name = input()
print('hello,', name)
```

```shell
$ python helloyou.py
hoolindao
hello, hoolindao
```

### 例子2

```python
name = input('please enter your name: ')
print('hello,', name)
```

```shell
$ python helloyou.py
please enter your name: hoolindao
hello, hoolindao
```

### 例子3

```python
data = int(input("Enter a number: "), 16)
# 第二个参数告诉输入的数字的基数，然后在内部它理解并转换它
# 不指定默认基数十
```

### `input()`总结

- 执行到该语句时，`等待监听`用户输出，作为返回值
- 可带有`输入提示`，使程序交互更友好
- `input()`将接收的数据均视为`string`
- 因为Python 3.x不评估和转换数据类型，必须显式进行数据类型转换 如`int()`