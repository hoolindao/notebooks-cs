#include <iostream>
using namespace std;
int main() {
    int b1 = 0, b2 = 0;
    cout << "Input two Numbers:" << endl;
    cin >> b1 >> b2;
    // 保证 b1 < b2;
    if(b1 > b2){
        int s = b1;
        b1 = b2;
        b2 = s;
    }
    // 输出
    while(b1 <= b2){
        cout << b1 << " ";
        b1 ++;
    }
    return 0;
}