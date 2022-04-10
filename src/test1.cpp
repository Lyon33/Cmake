/*************************************************************************
* File Name: test.cpp
* Author: Lyon
* 面向过程编程：首先要考虑的上遵循的步骤，接下来考虑如何表示这些数据。
* 面向对象：基本的数据单元，还需要一些处理该数据的方法，用户接口。
*
* 🥱 
* 🥱 类：将数据表示和操作数据的方法组合成一个整洁的包.
* Mail: 786208769@qq.com
* Created Time: 日  4/10 20:05:52 2022
*************************************************************************/
#include <iostream>

//写一个简单的类
class Stock
{
private:
    std::string     company;      //公司名称
    uint32_t  shares;       //股票数量
    uint16_t  share_value;  //每股价格
    uint32_t  total_value;  //总价格

public:
    uint32_t SetTol();
    Stock();
    ~Stock();
    Stock(std::string, int, int, int);
};

uint32_t Stock::SetTol()
{
    total_value = shares * total_value;
    return total_value;
}

Stock::Stock()
{
    std::cout << "默认构造函数.\n";
}

Stock::~Stock()
{
    std::cout << "析构函数.\n";
}

Stock::Stock(const std::string str, int s, int p, int tol)
    :company(str), shares(s), share_value(p), total_value(tol)
{
    std::cout << "这支股票的基本信息：" << "\n" << "价格：" << share_value 
        << "\n数量：" << shares << "\n公司名称：" << company << "\n总价: " 
        << total_value << "\n";
}

int main()
{
    Stock stock_1("Mexican", 100, 25, 2500);
    Stock p;    //将调用默认构造函数
    return 0;
}

