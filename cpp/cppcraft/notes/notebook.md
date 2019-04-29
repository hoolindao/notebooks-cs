# 草稿

## VS Code 中如何配置文件重定向？

- c++ 代码中 重定向输入输出 `freopen`
- 运行时重定向, `command line` `<input.file >output.file

### `freopen` ?

freopen是被包含于C标准库头文件stdio.h中的一个函数，用于重定向输入输出流。该函数可以在不改变代码原貌的情况下改变输入输出环境，但使用时应当保证流是可靠的。

|函数名：|freopen|
|头文件：|stdio.h|
|C89函数声明：|*FILE freopen( const char filename, const char mode, FILE stream );|
|C99函数声明：|FILE freopen(const char * restrict filename, const char * restrict mode, FILE * restrict stream)|

形参说明：

- filename：需要重定向到的文件名或文件路径。
- mode：代表文件访问权限的字符串。例如，"r"表示“只读访问”、"w"表示“只写访问”、"a"表示“追加写入”。
- stream：需要被重定向的文件流。
- 返回值：如果成功，则返回该指向该输出流的文件指针，否则返回为NULL。

附加说明：

- stdout（Standardoutput）标准输出
- stdin（Standardinput）标准输入
- stderr（Standarderror）标准错误

The same question has been asked about stdout: How to redirect the output back to the screen after freopen("out.txt", "a", stdout), but the answer is the same for both - there's no clean way of doing this: http://c-faq.com/stdio/undofreopen.html

Since you do need to read from the console later in the program, I'd suggest you just open the file as, well, a file. If the reason you wanted to use stdin to read from a file is the convenience of not having to pass the file handle to functions like fscanf, you could consider using fstream facilities instead - the code can look exactly as when reading from the console:

程序流程图

（程序员需要掌握哪些图？）

cin 输出浮点数，默认 *有效数字位* 是6位！
 https://bbs.csdn.net/topics/240008037
 https://blog.csdn.net/frank0712105003/article/details/8058837

`sizeof`  输出变量所占字节数

头文件iostream中提供控制符：
dec:指示cout以十进制输出。 hex:指示cout以十六进制输出。 oct:指示cout以八进制输出。

输出二进制有些麻烦，因为并没有这样的控制符。不过可以使用bitset把要输出的数变成二进制存储输出。