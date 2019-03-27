#include <iostream>
using namespace std;
int main() {
    cout << "---1.9---" << endl;
    int sum = 0;
    for (int i = 50; i <= 100; i++) 
        sum += i;
    cout << sum << endl;
    cout << "---1.10---" << endl;
    for (int i = 10 - 1; i >= 1; i--) 
        cout << i << " ";
    cout << endl << "---1.11---" << endl;
    int b1 = 0, b2 = 0;
    cout << "Input two Numbers: " << endl;
    cin >> b1 >> b2;
    if (b1 > b2){
        int s = b1;
        b1 = b2;
        b2 = s;
    }
    for (int i = b1; i <= b2; i++)
        cout << i << " ";
    cout << endl;
    return 0;
}