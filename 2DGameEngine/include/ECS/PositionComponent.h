/*************************************************************************
* File Name: PositionComponent.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 一  5/ 2 22:21:48 2022
*************************************************************************/
#pragma once
#include "Components.h"

class PositionComponent : public Component
{
private:
    int xpos;
    int ypos;

public:

    PositionComponent()
    {
        xpos = 0;
        ypos = 0;
    }

    PositionComponent(int x, int y)
    {
        xpos = x; 
        ypos = y;
    }

    void update()
    {
        xpos++;
        ypos++;
    }

    int x() { return xpos; }
    int y() { return ypos; }

    void x(int x) { xpos = x; }
    void y(int y) { ypos = y; }

    void SetPos(int x, int y)
    {
        xpos = x;
        ypos = y;
    }
};

