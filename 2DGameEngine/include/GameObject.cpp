/*************************************************************************
* File Name: /Users/lyon_z/workspace/test/2DGameEngine/include/GameObject.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 日  5/ 1 21:15:44 2022
*************************************************************************/
#include "GameObject.h"
#include "TextureManager.h"

GameObject::GameObject(const char* texturesheet, SDL_Renderer* ren, int x, int y)
{
    renderer = ren; 
    objTexture = TextureManager::LoadTexture(texturesheet, renderer);

    xpos = x;
    ypos = y;
}

void GameObject::Update()
{
    /* xpos++; */
    ypos++;
    
    srcR.h = 15;
    srcR.w = 15;
    srcR.x = 0;
    srcR.y = 0;

    desR.x = xpos;
    desR.y = ypos;
    desR.w = srcR.w * 2;
    desR.h = srcR.h * 2 + 2;

}

void GameObject::Render()
{
    SDL_RenderCopy(renderer, objTexture, NULL, &desR);
    /* SDL_RenderCopy(renderer, objTexture, &srcR, &desR); */
    //不知道为什么，跟着视频，第三个参数写 &srcR时，不能正确显示图片
}

