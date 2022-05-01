/*************************************************************************
* File Name: /Users/lyon_z/workspace/test/2DGameEngine/include/Map.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 一  5/ 2 00:22:33 2022
*************************************************************************/
#include "Map.h"
#include "TextureManager.h"

//这个二维数组，是根据用户窗口(h,w)来定义，几行几列的（25*32 = 800， 10*32 = 320) 
int lvl1[25][10] = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 1, 2, 2, 0},
    {0, 0, 0, 0, 0, 0, 1, 1, 2, 2},
    {0, 0, 0, 0, 0, 0, 1, 1, 1, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

Map::Map()
{
    dirt = TextureManager::LoadTexture("../assets/dirt.png");
    grass = TextureManager::LoadTexture("../assets/grass.png");
    water = TextureManager::LoadTexture("../assets/water.png");

    LoadMap(lvl1);

    src.x = src.y = 0;
    //定义一块像素的大小
    src.w = dest.w = 32; 
    src.h = dest.h = 32;

    dest.x = dest.y = 0;
}

void Map::LoadMap(int arr[25][10])
{
    for(int raw = 0; raw < 25; raw++)
    {
        for(int column = 0; column < 10; column++)
        {
            map[raw][column] = arr[raw][column];
        }
    }
}

void Map::DrawMap()
{
    int type = 0;
    for(int raw = 0; raw < 25; raw++)
        for(int column = 0; column < 10; column++)
        {
           type = map[raw][column]; 

           dest.x = column * 32;
           dest.y = raw * 32;

           switch(type)
           {
           case 0:
               TextureManager::Drwa(water, src, dest);
               break;
           case 1:
               TextureManager::Drwa(grass, src, dest);
               break;
           case 2:
               TextureManager::Drwa(dirt, src, dest);
               break;

           default:
               break;
           }
        }
}
