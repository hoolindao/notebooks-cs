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
#include <cstdio>
#include "countSales.h"

using namespace std;

int main() {
    countSales();
    return 0;
}