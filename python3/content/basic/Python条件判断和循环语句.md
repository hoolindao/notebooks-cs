# Python条件判断和循环语句

## 条件判断

- `if`
- `else`
- `else if` `elif`
- 必须在关键字后键入`:`

### 例子

```python
if True:
    '执行此语句'
```

```python
if False:
    '不执行此语句‘
else:
    '执行此语句'
```

```python
if False:
    '不执行此语句'
elif True:
    '执行此语句‘
else:
    '不执行此语句'
```

### 注意

多`elif`判断的语句块，python是顺序向下执行，命中后就不在进行后续的判断。如下例

```python
age = 20
if age >= 6:
    print('teenager')
elif age >= 18:
    print('adult')
else:
    print('kid')
```

```shell
$ python test.py
teenager
```

## 循环

- 'for x in ...'
- 'while'
- 'break'
- 'continue'
