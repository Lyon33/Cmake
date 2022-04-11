/*************************************************************************
* File Name: main.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 三  4/ 6 16:21:09 2022
*************************************************************************/
#include "Image.h"

int main()
{
    Image test("test.jpg");
    test.write("test.png");

    Image copy = test;
    for(int i = 0; i < copy.w * copy.channals; ++i)
    {
        copy.data[i] = 255;
    }
    copy.write("copy.bmp");

    Image blank(1280,720, 3);
    blank.write("blank.jpg");
    
    //平均灰度图像
    Image gray_avg = test;
    gray_avg.grayscale_avg();
    gray_avg.write("gray_avg.jpg");

    //加权灰度图像
    Image gray_lum = test;
    gray_lum.grayscale_avg();
    gray_lum.write("gray_lum.jpg");

    //对图像进行颜色分级
    Image color_mask = test;
    //关闭 r g 通道，只显示蓝色
    color_mask.colorMask(0,0,1);
    color_mask.write("color_mask.jpg");

    return 0;
}

