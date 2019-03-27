#include <iostream>
using namespace std;
int main() {
    int ope = 50, sum = 0;
    while(ope <= 100){
        sum += ope;
        ope ++;
    }
    cout << "sum of 50 to 100 is " << sum << endl;
    return 0;
}