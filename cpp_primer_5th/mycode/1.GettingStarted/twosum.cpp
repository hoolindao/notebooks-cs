#include <iostream>
//using namespace std;
int main() {
    // code version 1
    std::cout << "Enter two numbers" << std::endl;
    int v1 = 0, v2 = 0;
    std::cin >> v1 >> v2; // 从这里深刻理解到 stream 的含义
    std::cout << "The sum of " << v1 << " and " << v2
              << " is " << v1 + v2 << std::endl; 
    // c++ 代码风格：
    // 1. 操作符前后用空格隔开
    // 2. 一行代码太长，可拆成两行，因为 ";" 才是一行指令(表达式)结束的标志
    // code version 2
    std::cout << "Enter two numbers" << std::endl;
    v1 = 0;
    v2 = 0;
    std::cin >> v1;
    std::cin >> v2;
    std::cout << "The sum of " << v1;
    std::cout << " and " << v2;
    std::cout << " is " << v1 + v2 << std::endl;
    // version 1 的代码更简洁，但出错时，无法精确定位到是哪个变量位置
    // 而 version 2 虽然更好排错，但也牺牲了编码效率

    // test for standar error and log
    std::cout << "Enter two natural numbers " << std::endl;
    std::cin >> v1 >> v2;
    if(v1 < 0 || v2 < 0) std::cerr << "wrong input" << std::endl;
    std::clog << "User Enter two numbers" << std::endl;
    // test for commant delimiter
    std::cout << "/*" << "*/" ;
    return 0;
}