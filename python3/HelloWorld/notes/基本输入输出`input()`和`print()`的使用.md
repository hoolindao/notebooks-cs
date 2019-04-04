## 基本输入输出`input()`和`print()`的使用
### 输出
#### 例子1
```python
print('simple output')
```
```shell
$ python test.py
simple output
```
#### 例子2
```python
print('simple', 'output')
```
```shell
$ python test.py
simple output
```
#### 例子3
```python
print('100 + 1 =', 100 + 1)
```
```shell
$ python test.py
100 + 1 = 101
```
#### `print()`总结
- 输出'strings'的内容
- 逗号隔开多个`参数`，且每个逗号在输出格式中`占一个空格`
- 能识别表达式并执行，输出其返回值

### 输入
#### 例子1
```python
name = input()
print('hello,', name)
```
```shell
$ python helloyou.py
hoolindao
hello, hoolindao
```
#### 例子2
```python
name = input('please enter your name: ')
print('hello,', name)
```
```shell
$ python helloyou.py
please enter your name: hoolindao
hello, hoolindao
```
#### `input()`总结
- 执行到该语句时，`等待监听`用户输出，作为返回值
- 可带有`输入提示`，使程序交互更友好