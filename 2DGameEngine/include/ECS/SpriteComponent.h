/*************************************************************************
* File Name: SpriteComponent.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 一  5/ 2 22:21:07 2022
*************************************************************************/
#pragma once
#include "Components.h"
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
        transform = &entity->getComponent<TransformComponent>();

        //这里跟视频不同，选的不是32*32的照片，选的是马里奥的照片.
        /* srcR.x = srcR.y = 0; */
        /* srcR.w = srcR.h = 32; */
        destR.w = destR.h = 64;
    }

    void update() override
    {
        destR.x = (int)transform->position.x;
        destR.y = (int)transform->position.y;
    }

    void draw() override
    {
        TextureManager::Draw(texture, srcR, destR);
    }

private:
    TransformComponent* transform;

    SDL_Texture* texture;

    SDL_Rect srcR, destR;
};

