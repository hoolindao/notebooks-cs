#include <iostream>
#include <cstdio>
#include "APP_CLI/Bookstore/countSales.h"
#include "Basis/displaySize.h"
#include "Basis/displayUnsigned.h"

using namespace std;

void pressanykey() {
    cout << endl << "press any key to continue ..." << endl;
    getchar();
    getchar();
}

int main() {
    int op = -1;
    while (op != 0){
        cout << "======== Welcome To CPPCRAFT ========" << endl
             << "1. display total sales of Bookstore" << endl
             << "2. display sieze of basic data type" << endl
             << "0. exit" << endl
             << "=====================================" << endl
             << "Input 0~10 to select:";
        char eat = getchar();
        while ( eat - '0' < 0 || eat - '0' > 10)
            eat = getchar();
        op = eat - '0';
        cout << "=====================================" << endl;
        switch (op){
        case 1: 
            countSales("./App_CLI/Bookstore/data/book_sales");
            pressanykey();
            break;
        case 2: 
            displaySize();
            pressanykey();
            displayUnsigned();
            pressanykey();
            break;
        default:
            break;
        }
    }
    return op;
}