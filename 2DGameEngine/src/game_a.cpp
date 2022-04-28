/*************************************************************************
* File Name: game_a.cpp
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 二  4/26 23:11:43 2022
*************************************************************************/
#include "a.h"

a *game = nullptr;

int main()
{

    const int FPS = 60;     //设置帧率为60
    const int frameDelay = 1000 / FPS;  //设置延迟

    Uint32 frameStart;
    int frameTime;

    game = new a;

    game->init("mario_game",SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 320, 800, 0);

    while(game->running())
    {
        //图像触发计时
        frameStart = SDL_GetTicks();

        game->handleEvent();
        game->update();
        game->render();

        //图像总用时间
        frameTime = SDL_GetTicks() - frameStart;
        if(frameDelay > frameTime)
        {
            SDL_Delay(frameDelay - frameTime);
        }
    }

    game->clean();

    return 0;
}

