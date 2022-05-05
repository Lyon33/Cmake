/*************************************************************************
* File Name: /Users/lyon_z/workspace/test/2DGameEngine/include/a.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 二  4/26 22:40:56 2022
*************************************************************************/
#include "a.h"
#include "TextureManager.h"
#include "Map.h"
#include "ECS/Components.h"

SDL_Renderer* a::Render = nullptr;

Manager mannager;
auto& player(mannager.addEntity());

Map* map;

void a::init(const char* title, int xpos, int ypos, int weight, int heigh, bool fullscream)
{
    int flags = 0;
    if(fullscream){
        flags = SDL_WINDOW_FULLSCREEN;
    }

    if(SDL_Init(SDL_INIT_EVERYTHING) == 0)
    {
        std::cout << "System Initioned!\n";

        Window = SDL_CreateWindow(title, xpos, ypos, weight, heigh, flags);
        if(!Window)
        {
            std::cerr << "The Window Created Failed!\n";
        }

        Render = SDL_CreateRenderer(Window, -1, 0);
        if(!Render)
        {
            std::cerr << "The Render Created Failed!\n";
        }

        SDL_SetRenderDrawColor(Render,255,255,255,0xff);

        isRunning = true;
    }
    else{
        isRunning = false;
        std::cerr << "System Initoned Failed!\n";
    }

    map = new Map();

    //ecs implementation
    player.addComponent<TransformComponent>();
    player.addComponent<SpriteComponent>("../assets/mario.png");
}

bool a::running()
{
    /* std::cout << "The game is runnig...\n"; */
    return isRunning;
}

void a::handleEvent()
{
   SDL_Event event;
   SDL_PollEvent(&event);
   switch(event.type){
        case SDL_QUIT:
            isRunning = false;
            break;

        default:
            break;
   }
}

void a::render()
{
    SDL_RenderClear(Render);
    map->DrawMap();
    mannager.draw();
    SDL_RenderPresent(Render);
}

void a::update()
{
    mannager.refresh();
    mannager.updat();

    //改变位置（x y轴）(也是 x y上的速度)
    player.getComponent<TransformComponent>().position.Add(Vector2D(1,2));
    if(player.getComponent<TransformComponent>().position.x > 100)
    {
        player.getComponent<SpriteComponent>().setTex("../assets/enemy.png");
    }
}

void a::clean()
{
    SDL_DestroyRenderer(Render);
    SDL_DestroyWindow(Window);
    SDL_Quit();
    std::cout << "Game Quit!\n";
}

