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

void TextureManager::Drwa(SDL_Texture* tex, SDL_Rect src, SDL_Rect dest)
{
    SDL_RenderCopy(a::Render, tex, &src, &dest);
}

