/*
 * 从文件中读取销售记录
 * 生成每本书的销售报告
 * 显示：售出册数、总销售额和平均售价
 * 
 * 规定 data ：相同 ISBN 书号的所有销售记录是聚在一起的
 * 
 * 将每个 ISBN 的所有数据合并存入 total，前往下个 ISBN
 * 时，根据 data 格式可视为该 ISBN 处理完毕，输出 total
 * 过程中，同一 ISBN 的数据用 trans 读取
*/

#include <iostream>
#include <fstream>
#include <string>
#include <cstdio>
#include "Sales_item.h"

using namespace std;

int countSales(string datapath) {
    
    Sales_item total;
    ifstream data(datapath);
    cout << "//Access data on " << datapath << " ... ";
    if (data >> total) {
        cout << "Success! " << endl;
        cout << "Display result:  " << endl;
        cout << "-------------------------------" << endl; 
        cout << "    ISBN 销售量 销售额 单价   " << endl;
        cout << "-------------------------------" << endl; 
        Sales_item trans;
        while (data >> trans) {
            if (total.isbn() == trans.isbn()){
                total += trans; 
            }
            else {
                cout << total << endl;
                total = trans;
            }
        }
        cout << total << endl;
        cout << "-------------------------------" << endl; 
    } else {
        // 没有输入
        cout << "faild" << endl;
        cerr << "No data?" << endl;
        return -1;
    }
    data.close();
    return 0;
}