#include <iostream>
using namespace std;
int main() {
    // 读入一段有序数字序列，统计相同数字出现的次数并输出
    int currVal = 0, val = 0;
    if (cin >> currVal){
        int cnt = 1;
        while (cin >> val){
            if (val == currVal)
                cnt ++;
            else {
                cout << currVal << " occurs "
                     << cnt << " times" << endl;
                currVal = val;
                cnt = 1;
            }
        }
        cout << currVal << " occurs "
             << cnt << " times" << endl;
    }
    return 0;
}