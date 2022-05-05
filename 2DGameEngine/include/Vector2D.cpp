/*************************************************************************
* File Name: /Users/lyon_z/workspace/test/2DGameEngine/include/ECS/Vector2D.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 二  5/ 3 02:28:18 2022
*************************************************************************/
#include "Vector2D.h"

Vector2D::Vector2D(float x, float y)
{
    this->x = x;
    this->y = y;
}

Vector2D& Vector2D::Add(const Vector2D& vec)
{
    this->x += vec.x;
    this->y += vec.y;

    return *this;
}

Vector2D& Vector2D::Subtract(const Vector2D& vec)
{
    this->x -= vec.x;
    this->y -= vec.y;

    return *this;
}

Vector2D& Vector2D::Multiply(const Vector2D& vec)
{
    this->x *= vec.x;
    this->y *= vec.y;

    return *this;
}

Vector2D& Vector2D::Divide(const Vector2D& vec)
{
    this->x /= vec.x;
    this->y /= vec.y;

    return *this;
}

//友元函数(操作符重载)
Vector2D& operator+(Vector2D& vec1, const Vector2D& vec2)
{
    return vec1.Add(vec2);
}

Vector2D& operator-(Vector2D& vec1, const Vector2D& vec2)
{
    return vec1.Subtract(vec2);
}

Vector2D& operator*(Vector2D& vec1, const Vector2D& vec2)
{
    return vec1.Multiply(vec2);
}

Vector2D& operator/(Vector2D& vec1, const Vector2D& vec2)
{
    return vec1.Divide(vec2);
}

std::ostream& operator<<(std::ostream& stream, const Vector2D& vec)
{
    stream << "(" << vec.x << ", " << vec.y << ")";

    return stream;
}

///////////////// 成员函数 ///////////////////////
Vector2D& Vector2D::operator+=(const Vector2D& vec)
{
    return this->Add(vec);
}
Vector2D& Vector2D::operator-=(const Vector2D& vec)
{
    return this->Divide(vec);
}
Vector2D& Vector2D::operator*=(const Vector2D& vec)
{
    return this->Multiply(vec);
}
Vector2D& Vector2D::operator/=(const Vector2D& vec)
{
    return this->Divide(vec);
}
