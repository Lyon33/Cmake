/*************************************************************************
* File Name: TextureManager.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 四  4/28 16:55:07 2022
*************************************************************************/
#pragma once
//提问为什么不建议写 pragma once?
#include "a.h"

class TextureManager
{
public:
    //注意这里加了static静态修饰
    static SDL_Texture* LoadTexture(const char* fileName, SDL_Renderer* ren);

private:

};

