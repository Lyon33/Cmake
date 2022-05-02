/*************************************************************************
* File Name: SpriteComponent.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 一  5/ 2 22:21:07 2022
*************************************************************************/
#pragma once
#include "Components.h"
#include "SDL.h"
#include "TextureManager.h"

class SpriteComponent : public Component
{
public:
    SpriteComponent() = default;

    SpriteComponent(const char* path)
    {
        setTex(path);
    }

    void setTex(const char* path)
    {
        texture = TextureManager::LoadTexture(path); 
    }

    void init() override
    {
        position = &entity->getComponent<PositionComponent>();

        srcR.x = srcR.y = 0;
        srcR.w = srcR.h = 32;
        destR.w = destR.h = 64;
    }

    void update() override
    {
        destR.x = position->x();
        destR.y = position->y();
    }

    void draw() override
    {
        TextureManager::Drwa(texture, srcR, destR);
    }

private:
    PositionComponent* position;

    SDL_Texture* texture;

    SDL_Rect srcR, destR;
};

