/*************************************************************************
* File Name: GameObject.h
* 新建一个GameObject.h头文件，把玩家放入里面，使代码结构更好看
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 日  5/ 1 21:14:25 2022
*************************************************************************/
#pragma once
#include "a.h"

class GameObject
{
public:
    GameObject(const char* texturesheet, SDL_Renderer* ren, int x, int y);
    ~GameObject();

    //封装函数

    void Update();
    void Render();

private:
    //Player Pos
    int xpos;
    int ypos;
    
    SDL_Texture* objTexture;    //Player's Texture
    SDL_Renderer* renderer;     //Player's render

    SDL_Rect srcR, desR;         //Rect;
};

