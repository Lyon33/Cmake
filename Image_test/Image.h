/*************************************************************************
* File Name: Image.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 三  4/ 6 14:50:44 2022
*************************************************************************/
#ifndef __IMAGE__H
#define __IMAGE__H
#include <iostream>

//列出可能的照片类型
enum ImageType{
    PNG,JPG,BMP,TGA 
};

struct Image
{
    uint8_t* data = NULL;   //图片临时缓存数组
    size_t   size = 0;
    int w;
    int h;
    int channals;
    
    Image(const char* filename);
    Image(int w, int h, int channals);
    Image(const Image& img);
    ~Image();

    bool read(const char* filename);
    bool write(const char* filename);

    //获取照片类型,并返回
    ImageType getFileType(const char* filename);

    Image& grayscale_avg(); //灰度平均值 
    Image& grayscale_lum(); //灰度绽放
    
    Image& colorMask(float r, float g, float b);

    //在图像中隐藏秘密信息 4月九号 下午5点
    Image& encodeMessage(const char* message);
    Image& decodeMessage(char* buff, size_t* messageLength);

    //比较2个图片   //4月10号 上午
    Image& diffmap(Image& img);
};


#endif
