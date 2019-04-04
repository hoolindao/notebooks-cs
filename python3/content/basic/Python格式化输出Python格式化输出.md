# Python格式化输出

多种方法：

- 与命令行比较相关的有`%占位符`和格式化输出函数（如`str.format()`）
- 也有基于文件对象的`write()`方法

## 基础方法 `%占位符`

### 例1

```shell
>>> 'Hello, %s' % 'max'
'Hello, max'

>>> 'Hello, %s, I am %s, nice to meet you' % ('Joh', 'hoolindao')
'Hello, Joh, I am hoolindao, nice to meet you'
```

### 例2

```python
a = 88
b = 89
c = 90
print('''Your socre is out, please check here!
---------------
A: %d
B: %d
C: %d
---------------
Average: %.2f''' % (a, b, c, (a + b + c) / 3))

```

```shell
$ python test.py
Your socre is out, please check here!
---------------
A: 88
B: 89
C: 90
---------------
Average: 89.00
```

### 常见的占位符有：

占位符|替换内容
-----|-------
%d|整数
%f|浮点数
%s|字符串
%x|十六进制整数

占位符|描述
--|---
%.3f|保留3位小数
%.3e|v保留3位小数位，使用科学计数法