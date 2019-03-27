#include <iostream>
using namespace std;
int main() {
    int val = 0, sum = 0;
    while (cin >> val) sum += val;
    cout << "Sum is " <<sum;
    return 0;
    // test seq: 1 2 31 -1 1.1 output: 34 
    // 说明遇到 1.1 判断为非法输入，但仍强制类型转化为 1
    // test seq: 1 A output: 1
    // Shell in MacOS 输入数字后需要回车才能顺利输入 C+D 文件结束符
}