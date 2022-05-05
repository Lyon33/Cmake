/*************************************************************************
* File Name: Vector2D.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 二  5/ 3 02:25:54 2022
*************************************************************************/
#pragma once
#include <iostream>

class Vector2D
{
public:
    float x;

    float y;

    Vector2D() { x = 0.0f; y = 0.0f; }

    Vector2D(float x, float y);

    ~Vector2D() {}

    Vector2D& Add(const Vector2D& vec);
    Vector2D& Subtract(const Vector2D& vec);
    Vector2D& Multiply(const Vector2D& vec);
    Vector2D& Divide(const Vector2D& vec);

    friend Vector2D& operator+(Vector2D& vec1, const Vector2D& vec2);
    friend Vector2D& operator-(Vector2D& vec1, const Vector2D& vec2);
    friend Vector2D& operator*(Vector2D& vec1, const Vector2D& vec2);
    friend Vector2D& operator/(Vector2D& vec1, const Vector2D& vec2);

    Vector2D& operator+=(const Vector2D& vec);
    Vector2D& operator-=(const Vector2D& vec);
    Vector2D& operator*=(const Vector2D& vec);
    Vector2D& operator/=(const Vector2D& vec);

    friend std::ostream& operator<<(std::ostream& stream, const Vector2D& vec);

private:

};

