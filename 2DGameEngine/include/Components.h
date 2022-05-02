/*************************************************************************
* File Name: Components.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 一  5/ 2 19:02:22 2022
*************************************************************************/
#pragma once
#include "ECS.h"

class PositionComponent : public Component
{
private:
    int xpos;
    int ypos;

public:
    int x() { return xpos; }
    int y() { return ypos; }

    void init() override
    {
        xpos = 0;
        ypos = 0;
    }

    void update() override
    {
        xpos++;
        ypos++;
    }

    void setPos(int x, int y)
    {
        xpos = x;
        ypos = y;
    }

};

