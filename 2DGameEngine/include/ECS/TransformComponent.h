/*************************************************************************
* File Name: PositionComponent.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 一  5/ 2 22:21:48 2022
*************************************************************************/
#pragma once
#include "Components.h"
#include "Vector2D.h"

class TransformComponent : public Component
{
/* private: */
/*     int xpos; */
/*     int ypos; */

public:
    Vector2D position;

    TransformComponent()
    {
        /* xpos = 0; */
        /* ypos = 0; */
        position.x = 0.0f;
        position.y = 0.0f;
    }

    TransformComponent(float x, float y)
    {
        position.x = x;
        position.y = y;
    }

    /* void update() override */
    /* { */
    /*     /1* xpos++; *1/ */
    /*     /1* ypos++; *1/ */
    /* } */

    /* int x() { return xpos; } */
    /* int y() { return ypos; } */

    /* void x(int x) { xpos = x; } */
    /* void y(int y) { ypos = y; } */

    /* void SetPos(int x, int y) */
    /* { */
    /*     xpos = x; */
    /*     ypos = y; */
    /* } */
};

