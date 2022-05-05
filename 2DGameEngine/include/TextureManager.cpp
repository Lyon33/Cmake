/*************************************************************************
* File Name: /Users/lyon_z/workspace/test/2DGameEngine/src/TextureManage.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 四  4/28 17:02:51 2022
*************************************************************************/
#include "TextureManager.h"

SDL_Texture* TextureManager::LoadTexture(const char* texture)
{
    SDL_Surface* tmpSurface = IMG_Load(texture); 
    SDL_Texture* tex = SDL_CreateTextureFromSurface(a::Render, tmpSurface);
    SDL_FreeSurface(tmpSurface);

    return tex;
}

void TextureManager::Draw(SDL_Texture* tex, SDL_Rect src, SDL_Rect dest)
{
    //如果要按视频的32*32尺寸的照片，第三个参数就&src
    /* SDL_RenderCopy(a::Render, tex, &src, &dest); */
    SDL_RenderCopy(a::Render, tex, NULL, &dest);
}

