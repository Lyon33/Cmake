/*************************************************************************
* File Name: ECS.h
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 一  5/ 2 18:03:04 2022
*************************************************************************/
#pragma once
#include <iostream>
#include <vector>
#include <memory>
#include <algorithm>
#include <bitset>
#include <array>

class Component;
class Entity;

using ComponentID = std::size_t;
constexpr std::size_t maxComponents = 32;

inline ComponentID getComponentTypeID()
{
    static ComponentID lastID = 0;
    return lastID++;
}

template <typename T> inline ComponentID getComponentTypeID() noexcept
{
    static ComponentID typeID = getComponentTypeID();
    return typeID;
}

using ComponentBitSet = std::bitset<maxComponents>;
using ComponentArray = std::array<Component*, maxComponents>;

class Component
{
public:
    Entity* entity;
    virtual void init() {}
    virtual void update() {}
    virtual void draw() {}

    virtual ~Component() {}

private:
    
};

class Entity{
private:
    bool active = true;
    std::vector<std::unique_ptr<Component>> components;

    ComponentArray componentArray;
    ComponentBitSet componentBitSet;
    
public:
    void update()
    {
        for(auto& c : components) c->update();
    }
    
    void draw() 
    {
        for(auto& c : components) c->draw();
    }

    bool isActive()const { return active; }

    void destroy()
    {
        active = false;
    }

    template <typename T> bool hasComponent() const
    {
        return componentBitSet[getComponentTypeID<T>];
    }

    //🍺不知道这个模版是什么意思
    template <typename T, typename... TArgs>
    T& addComponent(TArgs&&... mArgs)   //看不懂
    {
        T* c(new T(std::forward<TArgs>(mArgs)...));
        c->entity = this;
        std::unique_ptr<Component> uPtr{ c };
        components.emplace_back(std::move(uPtr));

        componentArray[getComponentTypeID<T>()] = c;
        componentBitSet[getComponentTypeID<T>()] = true;

        c->init();
        return *c;
    }

    template<typename T> T& getComponent()const
    {
        auto ptr(componentArray[getComponentTypeID<T>()]);

        return *static_cast<T*>(ptr);
    }
};

class Manager
{
private:
    std::vector<std::unique_ptr<Entity>> entities;

public:
    void updat()
    {
        for(auto& e : entities) e->update();
    }

    void draw()
    {
        for(auto& e : entities) e->draw(); 
    }

    void refresh()
    {
        //.erase()里面参数看不懂。。。remove_if()里面有3个参数
        entities.erase(std::remove_if(std::begin(entities), std::end(entities),
                                      [](const std::unique_ptr<Entity> &mEntity)
                                      {
                                      return !mEntity->isActive();
                                      }
                                     ), 
                       std::end(entities)
                      );
    }

    Entity& addEntity()
    {
        Entity* e = new Entity();
        std::unique_ptr<Entity> uPtr{ e };
        entities.emplace_back(std::move(uPtr));

        return *e;
    }

};


