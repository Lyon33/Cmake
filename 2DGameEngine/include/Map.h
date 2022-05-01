/*************************************************************************
* File Name: Map.h
* 编写游戏地图
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 一  5/ 2 00:19:49 2022
*************************************************************************/
#pragma once
#include "a.h"

class Map
{
public:
    Map();
    ~Map() {}

    void LoadMap(int arr[25][10]);
    void DrawMap();

private:
    SDL_Rect src, dest;

    SDL_Texture* dirt;
    SDL_Texture* grass;
    SDL_Texture* water;

    int map[25][10];

};

