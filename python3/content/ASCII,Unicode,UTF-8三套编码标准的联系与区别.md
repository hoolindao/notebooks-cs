# ASCII,Unicode,UTF-8三套编码标准的联系与区别

## 起源关系

- ASCII

最早计算机使用8bite表示一个字符（通用计算机下1字节(Byte) = 8比特(bite)的原因），可编码255个字符，对于英文和其相关字符来说完全够用。

- 每个语言自己一套编码标准

显然，对于非英语言来说，1字节是完全不够用的。于是推出各自的编码标准。

如我国制定了`GB2312`编码，用来把中文编进去。

- Unicode

为了解决多语言文本产生的乱码问题（一个文本只能使用一套编码标准，如含有日韩文字的文本，只使用支持日文的`Shift_JIS`，韩文显示将乱码）

`Unicode`用两个字节（通常情况）表示一个字符，就可编码65536个字符（还可扩展），试图把所有语言都统一到一套编码里。

- UTF-8

`Unicode`由于在编码上比ASCII编码需要多一倍的存储空间，在存储和传输上就十分不划算。

考虑到英文字母更常用，本着节约的精神，又出现了把Unicode编码转化为“可变长编码”的UTF-8编码。UTF-8编码把一个Unicode字符根据不同的数字大小编码成1-6个字节，常用的英文字母被编码成1个字节，汉字通常是3个字节，只有很生僻的字符才会被编码成4-6个字节。

- 同一字符的不同编码

字符|ASCII|Unicode|UTF-8
---|------|-------|-----
A|01000001|00000000 01000001|01000001
中|-|01001110 00101101|11100100 10111000 10101101

## 工作关系

在支持`Unicode`的计算机系统中

- 内存统一使用`Unicode`编码
- 当需要保存到硬盘或者需要传输的时候，就转换为`UTF-8`编码

![image0](../image/UTF-8-works-diagram/0.png)

浏览网页的时候，服务器会把动态生成的Unicode内容转换为UTF-8再传输到浏览器

![image1](../image/UTF-8-works-diagram/1.png)
