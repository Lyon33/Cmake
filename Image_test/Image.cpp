/*************************************************************************
* File Name: Image.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 三  4/ 6 15:01:33 2022
*************************************************************************/
#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#define BYTE_BOUND(value) value < 0 ? 0 : (value > 255 ? 255 : value)
//如果值小于0，则为0；如果大于255，则为255；否则值为value
#include "Image.h"
#include "stb_image.h"
#include "stb_image_write.h"

Image::Image(const char* filename)
{
    if(!read(filename))
    {
        std::cerr << "Read Image Failed!\n";
    }
    else{
        std::cout << "Read Image Done!\n";
    }
}

Image::Image(int w, int h, int channals)
    :w(w), h(h), channals(channals)
{
    size = w * h * channals;
    data = new uint8_t[size];
}

Image::Image(const Image& img)
    :Image(img.w, img.h, img.channals)
{
    memcpy(data, img.data, size);
}

Image::~Image()
{
    stbi_image_free(data);
}

bool Image::read(const char* filename)
{
    data = stbi_load(filename, &w, &h, &channals, 3);
    return data != NULL;    //如果加载图片失败，数据为空
}

bool Image::write(const char* filename)
{
    ImageType type = getFileType(filename);
    int suc;
    switch(type)
    {
    case PNG:
        suc = stbi_write_png(filename, w, h, channals, data, w * channals);
        break;
    case JPG:
        suc = stbi_write_jpg(filename, w, h, channals, data, 100);
        break;
    case BMP:
        suc = stbi_write_bmp(filename, w, h, channals, data);
        break;
    case TGA:
        suc = stbi_write_tga(filename, w, h, channals, data);
        break;
    }

    return suc != 0;
}

ImageType Image::getFileType(const char* filename)
{
    //获取照片的后缀
    const char* ext = strrchr(filename, '.');
    //strchr()作用是：截取第二个参数开始的字符串，直到结尾。
    if(ext != nullptr)  //判断照片类型是否为ImageType里的类型。
    {
        //判断照片是否为png类型
        if(strcmp(ext, ".png") == 0)    
        {
            return PNG;
        }
        else if(strcmp(ext, ".jpg") == 0)    
        {
            return JPG;
        }
        else if(strcmp(ext, ".bmp") == 0)    
        {
            return BMP;
        }
        else if(strcmp(ext, ".tga") == 0)    
        {
            return TGA;
        }
    }
    return PNG;
}

Image& Image::grayscale_avg()
{
    //将3通道相加，除以3. (r + g + b) / 3
    if(channals < 3)
    {
        std::cout << "Image " << this << "has less than 3 channals, it is assu\
            meed to already be grayscale.\n";
    }
    else
    {
        for(unsigned long i = 0; i < size; i += channals)
        {
            // r+g+b / 3 
            int gray = (data[i] + data[i + 1] + data[i +2]) / 3;
            memset(data+i, gray, 3);
        }
    }
    return *this;
}

Image& Image::grayscale_lum()
{
    //跟上面灰度平均值差不多，只是以加权的方式，减少图片亮度降低.
    //关于图像的灰度知识可以上维基百科
    if(channals < 3)
    {
        std::cout << "This Image has less than 3 channals, it is assumeed to\
            already be grayscale.\n";
    }
    else
    {
        for(unsigned int i = 0; i < size; i += channals)
        {
            //绿色多一点，因为人的眼睛对绿色更敏感,查维基百科得。
            int gray = 0.2126*data[i] + 0.7152*data[i+1] + 0.0722*data[i+2];
            memset(data+i, gray, 3);
        }
    }
    return *this;
}

//对图像进行颜色分级 2022 04 / 07 下午
Image& Image::colorMask(float r, float g, float b)
{
    //确保图像具有rgb三通道。
    if(channals < 3)
    {
        std::cerr << "The Img Color Mask must at least 3 channals.\n";
    }
    else
    {
        for(int i = 0; i < (int)size; i += channals)
        {
            //注意上 通道相乘.
            data[i] *= r;
            data[i+1] *= g;
            data[i+2] *= b;
        }
    }
    return *this;
}
Image& Image::diffmap(Image& img)
{
    int compare_width  = fmin(w, img.w);
    int compare_height = fmin(h, img.h);
    int compare_channels = fmin(channals, img.channals);

    for(uint32_t i = 0; i < compare_height; ++i)
    {
        for(uint32_t j = 0; j < compare_width; ++j)
        {
            for(uint8_t k = 0; k < compare_channels; ++k)
            {
                data[(i * w + j) * channals + k] = BYTE_BOUND(abs(data[(i * w + j) * channals + k]/
                    - img.data[(i * img.w + j) * img.channals + k]));
            }
        }
    }

    return *this;
}



