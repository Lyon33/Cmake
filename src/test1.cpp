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
    std::string     m_company;      //公司名称
    uint32_t  m_shares;       //股票数量
    uint16_t  m_share_value;  //每股价格
    uint32_t  m_total_value;  //总价格

public:
    uint32_t SetTol();
    Stock();
    ~Stock();
    Stock(std::string, int, int, int);
};

uint32_t Stock::SetTol()
{
    m_total_value = m_shares *m_total_value;
    return m_total_value;
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
    :m_company(str), m_shares(s), m_share_value(p), m_total_value(tol)
{
    std::cout << "这支股票的基本信息：" << "\n" << "价格：" << m_share_value 
        << "\n数量：" << m_shares << "\n公司名称：" << m_company << "\n总价: " 
        << m_total_value << "\n";
}

int main()
{
    //这个是用的比较多的调用构造函数初始化类，该方法生成的对象没有名称，但是可以用指针
    //来管理对象！！💰💰💰💰💰💰💰💰       
    Stock* pStock = new Stock("Apple", 200, (int)50.78, (int)200*50.78);

    Stock stock_1("Mexican", 100, 25, 2500);//调用的是用户定义的构造函数
    Stock p;    //将调用默认构造函数
    return 0;
}

