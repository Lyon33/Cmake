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
    game = new a;

    game->init("aaaa",SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 500, 500, 0);

    while(game->running())
    {
        game->handleEvent();
        game->update();
        game->render();
    }

    game->clean();

    return 0;
}

