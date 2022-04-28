/*************************************************************************
* File Name: /Users/lyon_z/workspace/test/2DGameEngine/include/a.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 二  4/26 22:40:56 2022
*************************************************************************/
#include "a.h"

//创建一个 playerTex 贴图.
SDL_Texture* playerTex;

SDL_Rect srcR, desR;

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

    //添加马里奥图片到贴纸
    SDL_Surface* tmpSurface = IMG_Load("../assets/mario.png");
    playerTex = SDL_CreateTextureFromSurface(Render, tmpSurface);

    SDL_FreeSurface(tmpSurface);    //清空临时表面
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

#if 0
void a::handleEvent()
{
    SDL_Event event;
    if(SDL_PollEvent(&event))
    {
        if(SDL_QUIT == event.type)
        {
            isRunning = false;
        }
    }
    else{
        std::cerr << "handle event Failed!\n";
    }
}
#endif

void a::render()
{
    SDL_RenderClear(Render);
    SDL_RenderCopy(Render, playerTex, NULL, &desR);
    SDL_RenderPresent(Render);
}

void a::update()
{
    desR.h = 32;
    desR.w = 30;
    desR.y = count;
    std::cout << count++ << std::endl;

    /* SDL_Delay(15); */
}

void a::clean()
{
    SDL_DestroyRenderer(Render);
    SDL_DestroyWindow(Window);
    SDL_Quit();
    std::cout << "Game Quit!\n";
}

