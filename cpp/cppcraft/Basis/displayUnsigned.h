/*
 * 实际存储（十六进制显示），十进制显示
*/

#include <iostream>
#include <iomanip>

using namespace std;
void divide() {
    cout << "----------------------------------------";
    cout << "----------------------------------------" << endl;
}
int displayUnsigned() {
    cout << "type: int" << endl;
    cout << "类型\t十进制\t十六进制\t||\t类型\t\t十进制\t\t十六进制" << endl;
    divide();
    unsigned uns = 0;
    cout << resetiosflags(ios_base::basefield);
    for (int sig = -10; sig <= 10; sig ++) {
        uns = sig;
        cout << "signed\t" << dec << sig << "\t" << hex << sig;
        if(sig >= 0) cout << "\t";
        cout <<"\t||\t";
        cout << "unsigned\t" << dec << uns << "\t";
        if(sig >= 0) cout << "\t";
        cout << hex << uns << endl;
    }
    cout << resetiosflags(ios_base::basefield);
    return 0;
}
