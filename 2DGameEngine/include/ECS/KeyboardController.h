/*************************************************************************
* File Name: KeyboardController.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 四  5/ 5 12:49:45 2022
*************************************************************************/
#pragma once
#include "a.h"
#include "ECS.h"
#include "Components.h"

class KeyboardController : public Component
{
public:
    TransformComponent* transform;

    void init() override
    {
        transform = &entity->getComponent<TransformComponent>();
    }

    void update() override 
    {
        if(a::event.type == SDL_KEYDOWN)
        {
            switch(a::event.key.keysym.sym)
            {
            case SDLK_w:
                transform->velocity.y = -1;
                break;

            case SDLK_a:
                transform->velocity.x = -1;
                break;
            case SDLK_s:
                transform->velocity.y = 1;
                break;
            case SDLK_d:
                transform->velocity.x = 1;
                break;
            default:
                break;
            }
        }
        if(a::event.type == SDL_KEYUP)
        {
            switch(a::event.key.keysym.sym)
            {
            case SDLK_w:
                transform->velocity.y = 0;
                break;

            case SDLK_a:
                transform->velocity.x = 0;
                break;
            case SDLK_s:
                transform->velocity.y = 0;
                break;
            case SDLK_d:
                transform->velocity.x = 0;
                break;
            default:
                break;
            }
        }
    }

    KeyboardController() {}
    ~KeyboardController() {}

private:

};

