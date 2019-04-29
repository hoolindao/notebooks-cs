/*
 * 显示本机基本内置类型数据所占内存空间大小
*/

#include <iostream>
//#include <iomanip> // 格式输出控制符

using namespace std;

int displaySize() {
    char c = 'a';
    wchar_t c_t = 'b';
    char16_t c16_t = 'c';
    char32_t c32_t = 'd';
    short a1 = 1;
    int a2 = 2;
    long a3 = 3;
    long long a4 = 4;
    float d1 = 3.141592;
    double d2 = 3.1415926535;
    long double d3 = 3.1415926535;
    // 制表
    cout << "输出本机实际数据所占比特" <<endl;
    cout << "类型\t\t含义\t\t所占比特(位)" << endl;
    cout << "--------------------------------------------" << endl;
    cout << "char\t\t"<< "字符\t\t" << 8*(sizeof c) << endl;
    cout << "wchar_t\t\t"<< "宽字符\t\t" << 8*(sizeof c_t) << endl;
    cout << "char16_t\t" << "Unicode 字符\t" << 8*(sizeof c16_t) << endl;
    cout << "char32_t\t" << "Unicode 字符\t" << 8*(sizeof c32_t) << endl;
    cout << "short\t\t" << "短整型\t\t" << 8*(sizeof a1) << endl;
    cout << "int\t\t" << "整型\t\t" << 8*(sizeof a2) << endl;
    cout << "long\t\t" << "长整型\t\t" << 8*(sizeof a3) << endl;
    cout << "long long\t" << "长整型\t\t" << 8*(sizeof a4) << endl;
    cout << "float\t\t" << "单精度浮点数\t" << 8*(sizeof d1) 
         << "  有效数字: 6位" << endl;
    cout << "double\t\t" << "双精度浮点数\t" << 8*(sizeof d2)
         << "  有效数字：10位" << endl;
    cout << "long double\t" << "扩展精读浮点数\t" << 8*(sizeof d3)
         << " 有效数字：10位" << endl;
    return 0;
}